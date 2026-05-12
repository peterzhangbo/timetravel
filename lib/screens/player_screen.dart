import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:just_audio/just_audio.dart';
import 'package:audio_session/audio_session.dart';
import '../providers/music_provider.dart';
import '../providers/time_provider.dart';
import '../services/musickit_service.dart';
import '../theme/app_theme.dart';

class PlayerScreen extends ConsumerStatefulWidget {
  const PlayerScreen({super.key});

  @override
  ConsumerState<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends ConsumerState<PlayerScreen> {
  // Preview player (fallback)
  final AudioPlayer _previewPlayer = AudioPlayer();

  // Native MusicKit
  final MusicKitNativeService _musicKit = MusicKitNativeService();
  bool _nativeAuthorized = false;
  bool _usingNative = false;

  // Shared state
  bool _isPlaying = false;
  Duration _position = Duration.zero;
  Duration _duration = const Duration(seconds: 30);
  String? _error;
  String? _currentPreviewUrl;
  StreamSubscription? _nativeStateSub;
  bool _suppressIndexListener = false;

  @override
  void initState() {
    super.initState();
    _setupAudio();
    _initMusicKit();

    // Preview player listeners
    _previewPlayer.playerStateStream.listen((state) {
      if (!mounted || _usingNative) return;
      setState(() => _isPlaying = state.playing);
      if (state.processingState == ProcessingState.completed) {
        _autoAdvance();
      }
    });
    _previewPlayer.positionStream.listen((pos) {
      if (mounted && !_usingNative) setState(() => _position = pos);
    });
    _previewPlayer.durationStream.listen((dur) {
      if (mounted && !_usingNative && dur != null) setState(() => _duration = dur);
    });
    _previewPlayer.playbackEventStream.listen((_) {}, onError: (Object e) {
      // Ignore intentional interruptions (abort/loading interrupted) that happen
      // when we stop the preview to switch to native MusicKit playback.
      if (!mounted || _usingNative) return;
      final msg = e.toString().toLowerCase();
      if (msg.contains('abort') || msg.contains('loading interrupted')) return;
      setState(() => _error = 'Preview error');
    });

    // Try playing current track
    WidgetsBinding.instance.addPostFrameCallback((_) => _tryPlayCurrent());
  }

  Future<void> _setupAudio() async {
    final session = await AudioSession.instance;
    await session.configure(const AudioSessionConfiguration.music());
  }

  Future<void> _initMusicKit() async {
    try {
      final status = await _musicKit.authorize();
      if (!mounted) return;

      final wasAuthorized = _nativeAuthorized;
      setState(() => _nativeAuthorized = status == 'authorized');

      if (_nativeAuthorized) {
        _listenNativeState();

        // If preview was already playing, set native mode flag FIRST so that
        // any abort errors from stop() are ignored by the preview error handler.
        if (!wasAuthorized) {
          setState(() => _usingNative = true);
          try { await _previewPlayer.stop(); } catch (_) {}
          _currentPreviewUrl = null;
          _tryPlayCurrent();
        }
      }
    } catch (e) {
      // MusicKit not available, fall back to preview
    }
  }

  void _listenNativeState() {
    _nativeStateSub = _musicKit.playerStateStream.listen((state) {
      if (!mounted) return;
      setState(() {
        _isPlaying = state['isPlaying'] ?? false;
        _position = Duration(
            milliseconds: ((state['position'] ?? 0.0) * 1000).toInt());
        final dur = (state['duration'] ?? 0.0) as double;
        if (dur > 0) {
          _duration = Duration(milliseconds: (dur * 1000).toInt());
        }
      });
      
      // Update playing index if native player advanced
      final currentTitle = state['currentTitle'] as String?;
      if (currentTitle != null && currentTitle.isNotEmpty) {
        _updateNativeIndexByTitle(currentTitle);
      }
    }, onError: (_) {});
  }

  void _updateNativeIndexByTitle(String title) {
    final matched = ref.read(matchedTracksProvider).valueOrNull;
    if (matched == null) return;

    final currentIdx = ref.read(playingIndexProvider);
    if (currentIdx >= 0 && currentIdx < matched.length) {
      final t = matched[currentIdx].$2;
      if (t != null && t.title == title) return; // already correct
    }

    // Find the track by title
    for (int i = 0; i < matched.length; i++) {
      final t = matched[i].$2;
      if (t != null && t.title == title) {
        if (currentIdx != i) {
          _suppressIndexListener = true;
          ref.read(playingIndexProvider.notifier).state = i;
          // Reset suppression in the next frame
          WidgetsBinding.instance.addPostFrameCallback((_) {
            _suppressIndexListener = false;
          });
        }
        break;
      }
    }
  }

  void _tryPlayCurrent() {
    final matched = ref.read(matchedTracksProvider).valueOrNull;
    final idx = ref.read(playingIndexProvider);
    if (matched == null || idx < 0 || idx >= matched.length) return;

    final (song, track) = matched[idx];

    if (_nativeAuthorized) {
      _playNative(matched, idx);
    } else if (track?.previewUrl != null) {
      _playPreview(track!.previewUrl!);
    }
  }

  /// Play using native MusicKit (full songs, requires Apple Music subscription).
  Future<void> _playNative(List<(dynamic, dynamic)> matched, int startIdx) async {
    if (startIdx < 0 || startIdx >= matched.length) return;
    final (song, track) = matched[startIdx];
    if (track == null) return;

    // Build one search query for just the current song.
    // We'll pass the rest of the list so MusicKit can queue them after.
    final allQueries = matched
        .where((m) => m.$2 != null)
        .map((m) => '${m.$1.artist} ${m.$1.title}')
        .toList();

    if (allQueries.isEmpty) return;

    // Offset = position of startIdx in the filtered (non-null track) list
    int offset = 0;
    for (int i = 0; i < startIdx && i < matched.length; i++) {
      if (matched[i].$2 != null) offset++;
    }

    // Mark as native immediately — this silences any abort errors from the
    // preview player that may fire while we await the network search below.
    setState(() {
      _usingNative = true;
      _error = null;
      _duration = Duration.zero;
    });

    try {
      await _musicKit.playSongs(allQueries, startIndex: offset);
    } on PlatformException catch (e) {
      if (!mounted) return;
      // 'abort' / 'loading interrupted' can fire even when playback actually
      // started (race between queue-setup and play call on some iOS versions).
      // Keep native mode in these cases — the song IS playing.
      final isInterruption = (e.code == 'abort') ||
          (e.message?.toLowerCase().contains('loading') ?? false) ||
          (e.message?.toLowerCase().contains('interrupt') ?? false);

      if (isInterruption) {
        // Native is playing — just swallow the transient error.
        return;
      }

      String message;
      switch (e.code) {
        case 'NO_SUBSCRIPTION':
          message = '需要 Apple Music 订阅才能播放完整版';
        case 'NOT_AUTHORIZED':
          message = '未授权访问 Apple Music';
        case 'NO_SONGS':
          message = '在 Apple Music 目录中找不到该歌曲';
        default:
          message = 'MusicKit 错误: ${e.message}';
      }
      // Real failure — revert to preview
      setState(() {
        _error = message;
        _usingNative = false;
      });
      if (track.previewUrl != null) _playPreview(track.previewUrl!);
    } catch (e) {
      if (!mounted) return;
      final msg = e.toString().toLowerCase();
      // Swallow intentional interruptions
      if (msg.contains('abort') || msg.contains('loading interrupted')) return;
      setState(() {
        _error = 'MusicKit 错误: $e';
        _usingNative = false;
      });
      if (track.previewUrl != null) _playPreview(track.previewUrl!);
    }
  }

  /// Play 30s preview using just_audio (fallback).
  Future<void> _playPreview(String url) async {
    if (url == _currentPreviewUrl) return;
    _currentPreviewUrl = url;
    setState(() {
      _error = null;
      _position = Duration.zero;
      _usingNative = false;
    });
    try {
      await _previewPlayer.setUrl(url);
      await _previewPlayer.play();
    } catch (e) {
      // Ignore abort errors — these happen when stop() is called while loading.
      final msg = e.toString().toLowerCase();
      if (msg.contains('abort') || msg.contains('loading interrupted')) return;
      if (mounted) setState(() => _error = 'Cannot play: $e');
    }
  }

  void _autoAdvance() {
    if (!ref.read(radioModeProvider)) return;
    final matched = ref.read(matchedTracksProvider).valueOrNull;
    if (matched == null) return;
    final idx = ref.read(playingIndexProvider);
    
    bool isPlayable(int i) {
      final t = matched[i].$2;
      if (t == null) return false;
      return _nativeAuthorized || t.previewUrl != null;
    }

    for (int i = idx + 1; i < matched.length; i++) {
      if (isPlayable(i)) {
        ref.read(playingIndexProvider.notifier).state = i;
        return;
      }
    }
    for (int i = 0; i <= idx; i++) {
      if (isPlayable(i)) {
        ref.read(playingIndexProvider.notifier).state = i;
        return;
      }
    }
  }

  @override
  void dispose() {
    _nativeStateSub?.cancel();
    _previewPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final track = ref.watch(currentTrackProvider);
    final songEntry = ref.watch(currentSongEntryProvider);
    final matchedAsync = ref.watch(matchedTracksProvider);
    final radioMode = ref.watch(radioModeProvider);

    // React to track index changes
    ref.listen(playingIndexProvider, (_, __) {
      if (_suppressIndexListener) return;
      
      final matched = ref.read(matchedTracksProvider).valueOrNull;
      final idx = ref.read(playingIndexProvider);
      if (matched == null || idx < 0 || idx >= matched.length) return;

      if (_nativeAuthorized) {
        _playNative(matched, idx);
      } else {
        final t = matched[idx].$2;
        if (t?.previewUrl != null) _playPreview(t!.previewUrl!);
      }
    });

    // Auto-select first playable
    matchedAsync.whenData((matched) {
      final idx = ref.read(playingIndexProvider);
      if (idx < 0 && matched.isNotEmpty) {
        for (int i = 0; i < matched.length; i++) {
          final t = matched[i].$2;
          if (t != null && (_nativeAuthorized || t.previewUrl != null)) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              ref.read(playingIndexProvider.notifier).state = i;
            });
            break;
          }
        }
      }
    });

    final title = track?.title ?? songEntry?.title ?? '—';
    final artist = track?.artist ?? songEntry?.artist ?? '';
    final artworkUrl = track?.artworkUrl;
    final hasPlayable = track?.previewUrl != null || _nativeAuthorized;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          if (artworkUrl != null)
            Positioned.fill(
              child: CachedNetworkImage(
                imageUrl: artworkUrl,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.6),
                colorBlendMode: BlendMode.darken,
                errorWidget: (_, __, ___) => const SizedBox.shrink(),
              ),
            ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black.withOpacity(0.3), AppColors.background],
                  stops: const [0.3, 0.8],
                ),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                _buildHeader(radioMode),
                const Spacer(),
                _buildArtwork(artworkUrl),
                const SizedBox(height: 36),
                _buildTrackInfo(title, artist, songEntry),
                if (_error != null)
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text(_error!,
                        style: const TextStyle(
                            fontSize: 12, color: Colors.redAccent)),
                  ),
                if (!hasPlayable && track != null)
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('No preview available',
                        style: TextStyle(fontSize: 12, color: Colors.orange)),
                  ),
                const SizedBox(height: 28),
                _buildProgress(),
                const SizedBox(height: 20),
                _buildControls(),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(bool radioMode) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_down_rounded,
                color: AppColors.textPrimary, size: 32),
            onPressed: () => Navigator.pop(context),
          ),
          const Spacer(),
          // Playback mode indicator
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: _usingNative
                  ? AppColors.accent.withOpacity(0.2)
                  : Colors.orange.withOpacity(0.2),
            ),
            child: Text(
              _usingNative ? 'Apple Music' : '30s Preview',
              style: TextStyle(
                fontSize: 11,
                color: _usingNative ? AppColors.accent : Colors.orange,
              ),
            ),
          ),
          if (radioMode) ...[
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: AppColors.accent.withOpacity(0.2),
              ),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.radio_rounded, size: 12, color: AppColors.accent),
                  SizedBox(width: 4),
                  Text('电台', style: TextStyle(fontSize: 11, color: AppColors.accent)),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildArtwork(String? url) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: url != null
              ? Image.network(url,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => _placeholder())
              : _placeholder(),
        ),
      ),
    );
  }

  Widget _placeholder() {
    return Container(
      color: AppColors.card,
      child: const Center(
        child: Icon(Icons.music_note_rounded,
            size: 64, color: AppColors.textSecondary),
      ),
    );
  }

  Widget _buildTrackInfo(String title, String artist, dynamic songEntry) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          Text(title,
              style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textPrimary),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const SizedBox(height: 6),
          Text(artist,
              style: const TextStyle(
                  fontSize: 15, color: AppColors.textSecondary),
              textAlign: TextAlign.center),
          if (songEntry?.album != null)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(songEntry.album!,
                  style: TextStyle(
                      fontSize: 12,
                      color: AppColors.textSecondary.withOpacity(0.6)),
                  textAlign: TextAlign.center),
            ),
        ],
      ),
    );
  }

  Widget _buildProgress() {
    final maxMs = _duration.inMilliseconds > 0
        ? _duration.inMilliseconds.toDouble()
        : 1.0;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 3,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 5),
              activeTrackColor: AppColors.accent,
              inactiveTrackColor: AppColors.divider,
              thumbColor: AppColors.accent,
            ),
            child: Slider(
              value: _position.inMilliseconds.toDouble().clamp(0.0, maxMs),
              max: maxMs,
              onChanged: (v) {
                if (_usingNative) {
                  _musicKit.seek(v / 1000.0);
                } else {
                  _previewPlayer.seek(Duration(milliseconds: v.toInt()));
                }
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_fmt(_position),
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textSecondary)),
                Text(_fmt(_duration),
                    style: const TextStyle(
                        fontSize: 12, color: AppColors.textSecondary)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildControls() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.skip_previous_rounded,
              color: AppColors.textPrimary, size: 40),
          onPressed: () {
            if (_usingNative) {
              _musicKit.skipToPrevious();
            } else {
              final idx = ref.read(playingIndexProvider);
              if (idx > 0) {
                ref.read(playingIndexProvider.notifier).state = idx - 1;
              }
            }
          },
        ),
        const SizedBox(width: 32),
        GestureDetector(
          onTap: () {
            if (_usingNative) {
              _isPlaying ? _musicKit.pause() : _musicKit.resume();
            } else {
              _isPlaying ? _previewPlayer.pause() : _previewPlayer.play();
            }
          },
          child: Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.accent,
              boxShadow: [
                BoxShadow(
                  color: AppColors.accent.withOpacity(0.4),
                  blurRadius: 20,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Icon(
              _isPlaying ? Icons.pause_rounded : Icons.play_arrow_rounded,
              color: AppColors.background,
              size: 36,
            ),
          ),
        ),
        const SizedBox(width: 32),
        IconButton(
          icon: const Icon(Icons.skip_next_rounded,
              color: AppColors.textPrimary, size: 40),
          onPressed: () {
            if (_usingNative) {
              _musicKit.skipToNext();
            } else {
              final idx = ref.read(playingIndexProvider);
              ref.read(playingIndexProvider.notifier).state = idx + 1;
            }
          },
        ),
      ],
    );
  }

  String _fmt(Duration d) {
    final m = d.inMinutes.remainder(60).toString().padLeft(2, '0');
    final s = d.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$m:$s';
  }
}
