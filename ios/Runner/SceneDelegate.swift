import Flutter
import UIKit
import MusicKit

class SceneDelegate: FlutterSceneDelegate {
    // Strong reference — prevents ARC from deallocating the handler
    // while the scene is alive.
    private var musicKitHandler: MusicKitHandler?

    override func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        // Must call super first — Flutter needs to create its engine & window.
        super.scene(scene, willConnectTo: session, options: connectionOptions)

        // After super, window and rootViewController are available.
        setupMusicKitChannel()
    }

    private func setupMusicKitChannel() {
        guard #available(iOS 15.0, *) else {
            print("[MusicKit] Requires iOS 15.0+")
            return
        }
        guard let flutterVC = window?.rootViewController as? FlutterViewController else {
            print("[MusicKit] ERROR: rootViewController is not FlutterViewController")
            return
        }

        let handler = MusicKitHandler()
        self.musicKitHandler = handler

        let messenger = flutterVC.binaryMessenger

        let channel = FlutterMethodChannel(
            name: "com.timetravel/musickit",
            binaryMessenger: messenger
        )
        let eventChannel = FlutterEventChannel(
            name: "com.timetravel/musickit/player_state",
            binaryMessenger: messenger
        )
        channel.setMethodCallHandler(handler.handle)
        eventChannel.setStreamHandler(handler)
        print("[MusicKit] ✅ Channel registered successfully via SceneDelegate")
    }
}
