import Flutter
import UIKit
import MusicKit

/// Handles MusicKit authorization and playback via Flutter MethodChannel.
@available(iOS 15.0, *)
class MusicKitHandler: NSObject, FlutterStreamHandler {
    private let player = ApplicationMusicPlayer.shared
    private var eventSink: FlutterEventSink?
    private var positionTimer: Timer?

    // MARK: - Method Channel

    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "authorize":
            authorize(result: result)
        case "playSongs":
            guard let args = call.arguments as? [String: Any],
                  let ids = args["ids"] as? [String],
                  let startIndex = args["startIndex"] as? Int else {
                result(FlutterError(code: "INVALID_ARGS", message: "Missing ids or startIndex", details: nil))
                return
            }
            playSongs(ids: ids, startIndex: startIndex, result: result)
        case "pause":
            player.pause()
            result(nil)
        case "resume":
            Task { try? await self.player.play() }
            result(nil)
        case "skipToNext":
            Task { try? await self.player.skipToNextEntry() }
            result(nil)
        case "skipToPrevious":
            Task { try? await self.player.skipToPreviousEntry() }
            result(nil)
        case "seek":
            if let args = call.arguments as? [String: Any],
               let posSeconds = args["position"] as? Double {
                player.playbackTime = posSeconds
            }
            result(nil)
        case "getState":
            result(playerStateDict())
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    // MARK: - Authorization

    private func authorize(result: @escaping FlutterResult) {
        Task {
            let status = MusicAuthorization.currentStatus
            print("[MusicKit] Current auth status: \(status.rawValue)")
            if status == .authorized {
                result("authorized")
                return
            }
            let newStatus = await MusicAuthorization.request()
            print("[MusicKit] New auth status: \(newStatus.rawValue)")
            switch newStatus {
            case .authorized:    result("authorized")
            case .denied:        result("denied")
            case .restricted:    result("restricted")
            case .notDetermined: result("notDetermined")
            @unknown default:    result("unknown")
            }
        }
    }

    // MARK: - Playback

    private func playSongs(ids: [String], startIndex: Int, result: @escaping FlutterResult) {
        Task {
            do {
                let status = MusicAuthorization.currentStatus
                guard status == .authorized else {
                    result(FlutterError(
                        code: "NOT_AUTHORIZED",
                        message: "Apple Music not authorized. Status: \(status.rawValue)",
                        details: nil
                    ))
                    return
                }

                guard !ids.isEmpty else {
                    result(FlutterError(code: "INVALID_ARGS", message: "Empty ids list", details: nil))
                    return
                }

                // --- Step 1: Fetch and play only the target song first ---
                let safeStart = min(startIndex, ids.count - 1)
                let targetQuery = ids[safeStart]
                var startRequest = MusicCatalogSearchRequest(term: targetQuery, types: [Song.self])
                startRequest.limit = 1
                let startResponse = try await startRequest.response()

                guard let firstSong = startResponse.songs.first else {
                    result(FlutterError(
                        code: "NO_SONGS",
                        message: "Could not find '\(targetQuery)' in Apple Music catalog",
                        details: nil
                    ))
                    return
                }

                player.queue = ApplicationMusicPlayer.Queue(for: [firstSong])

                do {
                    try await player.play()
                } catch let playError as NSError {
                    let isSubscriptionError = playError.domain == "MPMusicPlayerControllerErrorDomain"
                    result(FlutterError(
                        code: isSubscriptionError ? "NO_SUBSCRIPTION" : "PLAY_ERROR",
                        message: isSubscriptionError
                            ? "Apple Music subscription required to play full songs"
                            : playError.localizedDescription,
                        details: nil
                    ))
                    return
                }

                // Playback started — return success immediately
                startPositionTimer()
                result(nil)

                // --- Step 2: Load remaining songs in background and append to queue ---
                Task {
                    var remaining: [Song] = []
                    // Songs after startIndex
                    for query in ids[(safeStart + 1)...].prefix(19) {
                        var req = MusicCatalogSearchRequest(term: query, types: [Song.self])
                        req.limit = 1
                        if let resp = try? await req.response(), let song = resp.songs.first {
                            remaining.append(song)
                        }
                    }
                    // Songs before startIndex (wrap-around)
                    for query in ids[0..<safeStart].prefix(max(0, 19 - remaining.count)) {
                        var req = MusicCatalogSearchRequest(term: query, types: [Song.self])
                        req.limit = 1
                        if let resp = try? await req.response(), let song = resp.songs.first {
                            remaining.append(song)
                        }
                    }
                    if !remaining.isEmpty {
                        try? await self.player.queue.insert(remaining, position: .tail)
                        print("[MusicKit] Queued \(remaining.count) additional songs")
                    }
                }

            } catch {
                result(FlutterError(
                    code: "PLAY_ERROR",
                    message: error.localizedDescription,
                    details: nil
                ))
            }
        }
    }

    // MARK: - Player state

    private func playerStateDict() -> [String: Any] {
        let state = player.state
        // Attempt to read duration from the current entry
        var duration: Double = 0
        var currentTitle: String = ""
        var currentArtist: String = ""
        
        if let entry = player.queue.currentEntry, case let .song(song) = entry.item {
            duration = song.duration ?? 0
            currentTitle = song.title
            currentArtist = song.artistName
        }
        return [
            "isPlaying": state.playbackStatus == .playing,
            "isPaused":  state.playbackStatus == .paused,
            "position":  player.playbackTime,
            "duration":  duration,
            "currentTitle": currentTitle,
            "currentArtist": currentArtist
        ]
    }

    private func startPositionTimer() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.positionTimer?.invalidate()
            self.positionTimer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { [weak self] _ in
                guard let self = self, let sink = self.eventSink else { return }
                sink(self.playerStateDict())
            }
        }
    }

    // MARK: - FlutterStreamHandler

    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        self.eventSink = events
        startPositionTimer()
        return nil
    }

    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        self.eventSink = nil
        positionTimer?.invalidate()
        positionTimer = nil
        return nil
    }
}
