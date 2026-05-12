import 'package:flutter/services.dart';

/// Native MusicKit integration via platform channels.
/// Provides user authorization and full-song playback.
class MusicKitNativeService {
  static const _channel = MethodChannel('com.timetravel/musickit');
  static const _eventChannel =
      EventChannel('com.timetravel/musickit/player_state');

  /// Request MusicKit authorization (shows Apple ID sign-in prompt).
  /// Returns one of: 'authorized', 'denied', 'restricted', 'notDetermined', 'unknown'
  Future<String> authorize() async {
    final result = await _channel.invokeMethod<String>('authorize');
    return result ?? 'unknown';
  }

  /// Play a list of songs by their search queries (artist + title).
  /// [startIndex] controls which song to start from.
  /// Throws [PlatformException] with code 'NO_SUBSCRIPTION' if user has no
  /// Apple Music subscription, 'NOT_AUTHORIZED' if not authorized.
  Future<void> playSongs(List<String> ids, {int startIndex = 0}) async {
    await _channel.invokeMethod('playSongs', {
      'ids': ids,
      'startIndex': startIndex,
    });
  }

  Future<void> pause() => _channel.invokeMethod('pause');
  Future<void> resume() => _channel.invokeMethod('resume');
  Future<void> skipToNext() => _channel.invokeMethod('skipToNext');
  Future<void> skipToPrevious() => _channel.invokeMethod('skipToPrevious');

  /// Seek to a position in the current song (seconds).
  Future<void> seek(double positionSeconds) => _channel.invokeMethod('seek', {
        'position': positionSeconds,
      });

  /// Stream of player state updates: {isPlaying, isPaused, position, duration}
  Stream<Map<String, dynamic>> get playerStateStream {
    return _eventChannel.receiveBroadcastStream().map((event) {
      return Map<String, dynamic>.from(event as Map);
    });
  }
}

