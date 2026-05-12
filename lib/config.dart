/// Apple Music API credentials.
///
/// Fill in your values from https://developer.apple.com/account:
///   - Team ID:  Account → Membership → Team ID
///   - Key ID:   Certificates, Identifiers & Profiles → Keys → your MusicKit key
///   - Storefront: your region code ('us', 'cn', 'jp', 'hk', etc.)
///
/// Then place your .p8 file at assets/AuthKey.p8
class AppConfig {
  static const appleTeamId = '4FHLWU72XE';
  static const appleKeyId = 'QS26WHTZ7V';
  static const appleKeyPath = 'assets/AuthKey.p8';
  static const appleStorefront = 'cn';
}
