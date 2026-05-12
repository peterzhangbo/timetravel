import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:flutter/services.dart' show rootBundle;

/// Generates Apple Music Developer Token (JWT) from a .p8 private key.
///
/// You need three things from your Apple Developer account:
///   1. Team ID  — visible at https://developer.apple.com/account → Membership
///   2. Key ID   — the ID of the MusicKit key you created
///   3. .p8 file — downloaded when you created the key
class AppleMusicAuth {
  final String teamId;
  final String keyId;
  final String keyPath; // path to .p8 file in assets

  AppleMusicAuth({
    required this.teamId,
    required this.keyId,
    this.keyPath = 'assets/AuthKey.p8',
  });

  /// Generate a developer token valid for 6 months.
  Future<String> generateToken() async {
    // Read the .p8 private key from assets
    final privateKeyPem = await rootBundle.loadString(keyPath);

    final now = DateTime.now();
    final iat = now.millisecondsSinceEpoch ~/ 1000;
    final exp = now.add(const Duration(days: 180)).millisecondsSinceEpoch ~/ 1000;

    final jwt = JWT(
      {
        'iss': teamId,
        'iat': iat,
        'exp': exp,
      },
      header: {
        'alg': 'ES256',
        'kid': keyId,
      },
    );

    // Sign with the ES256 private key
    final token = jwt.sign(
      ECPrivateKey(privateKeyPem),
      algorithm: JWTAlgorithm.ES256,
    );

    return token;
  }
}
