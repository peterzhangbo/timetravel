import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/music_provider.dart';
import '../providers/time_provider.dart';
import '../screens/player_screen.dart';
import '../theme/app_theme.dart';

class MiniPlayer extends ConsumerWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final track = ref.watch(currentTrackProvider);
    final songEntry = ref.watch(currentSongEntryProvider);
    final radioMode = ref.watch(radioModeProvider);

    // Show mini player if a song is selected (even if no Apple Music match)
    if (songEntry == null) return const SizedBox.shrink();

    final title = track?.title ?? songEntry.title;
    final artist = track?.artist ?? songEntry.artist;
    final artworkUrl = track?.artworkUrl;
    final hasMatch = track != null;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          PageRouteBuilder(
            pageBuilder: (_, __, ___) => const PlayerScreen(),
            transitionsBuilder: (_, animation, __, child) {
              return FadeTransition(opacity: animation, child: child);
            },
          ),
        );
      },
      child: Container(
        height: 64,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          children: [
            const SizedBox(width: 12),
            // Artwork
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: artworkUrl != null
                  ? Image.network(artworkUrl,
                      width: 44, height: 44, fit: BoxFit.cover)
                  : Container(
                      width: 44,
                      height: 44,
                      color: AppColors.surface,
                      child: const Icon(Icons.music_note_rounded,
                          color: AppColors.textSecondary, size: 20),
                    ),
            ),
            const SizedBox(width: 14),
            // Info
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: hasMatch
                            ? AppColors.textPrimary
                            : AppColors.textSecondary,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                  Text(artist,
                      style: const TextStyle(
                          fontSize: 12, color: AppColors.textSecondary),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis),
                ],
              ),
            ),
            // Radio indicator
            if (radioMode)
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Icon(Icons.radio_rounded,
                    color: AppColors.accent.withOpacity(0.6), size: 18),
              ),
            // Controls
            if (hasMatch) ...[
              IconButton(
                icon: const Icon(Icons.skip_previous_rounded,
                    color: AppColors.textSecondary, size: 24),
                onPressed: () {
                  final idx = ref.read(playingIndexProvider);
                  if (idx > 0) {
                    ref.read(playingIndexProvider.notifier).state = idx - 1;
                  }
                },
              ),
              IconButton(
                icon: Icon(
                  ref.watch(isPlayingProvider) ? Icons.pause_rounded : Icons.play_arrow_rounded,
                  color: AppColors.textPrimary, size: 28),
                onPressed: () async {
                  final isPlaying = ref.read(isPlayingProvider);
                  final musicKit = ref.read(musicKitNativeProvider);
                  if (isPlaying) {
                    await musicKit.pause();
                    ref.read(isPlayingProvider.notifier).state = false;
                  } else {
                    // Try to resume. If it fails or wasn't queued, playGlobalTrack will initialize the queue.
                    try {
                      await musicKit.resume();
                      ref.read(isPlayingProvider.notifier).state = true;
                    } catch (e) {
                      await playGlobalTrack(ref);
                    }
                  }
                },
              ),
              IconButton(
                icon: const Icon(Icons.skip_next_rounded,
                    color: AppColors.textSecondary, size: 24),
                onPressed: () {
                  final idx = ref.read(playingIndexProvider);
                  ref.read(playingIndexProvider.notifier).state = idx + 1;
                },
              ),
            ],
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
