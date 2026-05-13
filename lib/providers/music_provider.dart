import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/music_track.dart';
import '../models/song_catalog.dart';
import '../services/apple_music_service.dart';
import '../services/auth_service.dart';
import '../services/musickit_service.dart';
import '../config.dart';
import 'time_provider.dart';

/// Auth service — generates JWT from .p8 key.
final authServiceProvider = Provider<AppleMusicAuth>((ref) {
  return AppleMusicAuth(
    teamId: AppConfig.appleTeamId,
    keyId: AppConfig.appleKeyId,
    keyPath: AppConfig.appleKeyPath,
  );
});

/// Apple Music service — auto-generates token on first use.
final appleMusicServiceProvider = FutureProvider<AppleMusicService>((ref) async {
  final auth = ref.read(authServiceProvider);
  final token = await auth.generateToken();
  return AppleMusicService(
    developerToken: token,
    storefront: AppConfig.appleStorefront,
  );
});

/// Native MusicKit service for user auth + full playback.
final musicKitNativeProvider = Provider<MusicKitNativeService>((ref) {
  return MusicKitNativeService();
});

/// MusicKit authorization status.
final musicKitAuthStateProvider = StateProvider<String>((ref) => 'notDetermined');

/// Matched tracks: local catalog songs matched with Apple Music results.
/// Each entry is a pair: (SongEntry, MusicTrack?) — null if not found on Apple Music.
final matchedTracksProvider =
    FutureProvider.autoDispose<List<(SongEntry, MusicTrack?)>>((ref) async {
  final songs = ref.watch(catalogSongsProvider);
  final shuffleIdx = ref.watch(shuffleIndexProvider);

  if (songs.isEmpty) return [];

  // Shuffle the songs based on shuffle index
  final rng = Random(shuffleIdx);
  final shuffled = List<SongEntry>.from(songs)..shuffle(rng);

  final service = await ref.read(appleMusicServiceProvider.future);
  final results = <(SongEntry, MusicTrack?)>[];

  // Search Apple Music for each song (limit to 30 to avoid rate limiting)
  for (final song in shuffled.take(30)) {
    try {
      final tracks = await service.searchSong(song.searchQuery);
      if (tracks.isNotEmpty) {
        results.add((song, tracks.first));
      } else {
        results.add((song, null));
      }
    } catch (_) {
      results.add((song, null));
    }
  }

  return results;
});

/// Currently playing track index (-1 = nothing playing).
final playingIndexProvider = StateProvider<int>((ref) => -1);

/// Current playing track (null if nothing).
final currentTrackProvider = Provider<MusicTrack?>((ref) {
  final index = ref.watch(playingIndexProvider);
  final matchedAsync = ref.watch(matchedTracksProvider);
  return matchedAsync.whenData((matched) {
    if (index < 0 || index >= matched.length) return null;
    return matched[index].$2; // MusicTrack, may be null
  }).value;
});

/// Current playing song entry (always available from local catalog).
final currentSongEntryProvider = Provider<SongEntry?>((ref) {
  final index = ref.watch(playingIndexProvider);
  final matchedAsync = ref.watch(matchedTracksProvider);
  return matchedAsync.whenData((matched) {
    if (index < 0 || index >= matched.length) return null;
    return matched[index].$1;
  }).value;
});

/// Whether MusicKit native playback is being used.
final usingNativePlaybackProvider = StateProvider<bool>((ref) => false);

/// Global playing state for UI sync
final isPlayingProvider = StateProvider<bool>((ref) => false);

/// Helper to trigger playback globally
Future<void> playGlobalTrack(WidgetRef ref) async {
  final idx = ref.read(playingIndexProvider);
  final matchedAsync = ref.read(matchedTracksProvider);
  final matched = matchedAsync.valueOrNull;
  if (matched == null || idx < 0 || idx >= matched.length) return;

  final musicKit = ref.read(musicKitNativeProvider);
  final allQueries = matched
      .where((m) => m.$2 != null)
      .map((m) => '${m.$1.artist} ${m.$1.title}')
      .toList();

  if (allQueries.isEmpty) return;

  int offset = 0;
  for (int i = 0; i < idx && i < matched.length; i++) {
    if (matched[i].$2 != null) offset++;
  }

  ref.read(isPlayingProvider.notifier).state = true;
  try {
    await musicKit.playSongs(allQueries, startIndex: offset);
  } catch (e) {
    // Ignore native aborts
    ref.read(isPlayingProvider.notifier).state = false;
  }
}
