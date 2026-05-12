import 'package:dio/dio.dart';
import '../models/music_track.dart';

/// Apple Music Catalog API service.
class AppleMusicService {
  final Dio _dio;
  final String developerToken;
  final String storefront;

  AppleMusicService({
    required this.developerToken,
    this.storefront = 'us',
  }) : _dio = Dio(BaseOptions(
          baseUrl: 'https://api.music.apple.com/v1',
          headers: {
            'Authorization': 'Bearer $developerToken',
          },
        ));

  /// Search for popular songs from a given decade.
  /// Strategy: search for a curated decade playlist, then grab its tracks.
  /// Falls back to song search if no playlist found.
  Future<List<MusicTrack>> getHitsForDecade(int decade) async {
    final decadeLabel = '${decade}s';

    // Step 1: Try to find a curated playlist for this decade
    try {
      final playlistResponse = await _dio.get(
        '/catalog/$storefront/search',
        queryParameters: {
          'term': 'Best of $decadeLabel',
          'types': 'playlists',
          'limit': 5,
        },
      );

      final playlists =
          playlistResponse.data?['results']?['playlists']?['data'] as List? ?? [];

      if (playlists.isNotEmpty) {
        final playlistId = playlists[0]['id'] as String;
        final tracks = await _getPlaylistTracks(playlistId);
        if (tracks.isNotEmpty) return tracks;
      }
    } catch (_) {
      // Fall through to song search
    }

    // Step 2: Fallback — direct song search with era-specific terms
    try {
      final songResponse = await _dio.get(
        '/catalog/$storefront/search',
        queryParameters: {
          'term': '$decadeLabel classics hits',
          'types': 'songs',
          'limit': 25,
        },
      );

      final songs =
          songResponse.data?['results']?['songs']?['data'] as List? ?? [];
      return songs
          .map((json) =>
              MusicTrack.fromAppleMusic(json as Map<String, dynamic>))
          .where((t) => t.previewUrl != null)
          .toList();
    } on DioException catch (e) {
      throw Exception('Apple Music API error: ${e.message}');
    }
  }

  /// Search for a specific song by artist + title or keyword.
  Future<List<MusicTrack>> searchSong(String query, {int limit = 3}) async {
    try {
      final response = await _dio.get(
        '/catalog/$storefront/search',
        queryParameters: {
          'term': query,
          'types': 'songs',
          'limit': limit,
        },
      );
      final songs =
          response.data?['results']?['songs']?['data'] as List? ?? [];
      return songs
          .map((json) =>
              MusicTrack.fromAppleMusic(json as Map<String, dynamic>))
          .where((t) => t.previewUrl != null)
          .toList();
    } catch (_) {
      return [];
    }
  }

  /// Get tracks from a specific playlist.
  Future<List<MusicTrack>> _getPlaylistTracks(String playlistId) async {
    try {
      final response = await _dio.get(
        '/catalog/$storefront/playlists/$playlistId/tracks',
        queryParameters: {'limit': 25},
      );

      final tracks = response.data?['data'] as List? ?? [];
      return tracks
          .map((json) =>
              MusicTrack.fromAppleMusic(json as Map<String, dynamic>))
          .where((t) => t.previewUrl != null)
          .toList();
    } catch (_) {
      return [];
    }
  }
}
