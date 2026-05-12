class MusicTrack {
  final String id;
  final String title;
  final String artist;
  final String albumName;
  final String artworkUrl; // 300x300 artwork
  final String? previewUrl; // 30s audio preview
  final int durationMs;

  const MusicTrack({
    required this.id,
    required this.title,
    required this.artist,
    required this.albumName,
    required this.artworkUrl,
    this.previewUrl,
    required this.durationMs,
  });

  factory MusicTrack.fromAppleMusic(Map<String, dynamic> json) {
    final attrs = json['attributes'] ?? {};
    final artwork = attrs['artwork'] ?? {};
    return MusicTrack(
      id: json['id'] ?? '',
      title: attrs['name'] ?? 'Unknown',
      artist: attrs['artistName'] ?? 'Unknown Artist',
      albumName: attrs['albumName'] ?? '',
      artworkUrl: (artwork['url'] ?? '')
          .replaceFirst('{w}', '300')
          .replaceFirst('{h}', '300'),
      previewUrl: attrs['previews']?.isNotEmpty == true
          ? attrs['previews'][0]['url']
          : null,
      durationMs: attrs['durationInMillis'] ?? 0,
    );
  }
}
