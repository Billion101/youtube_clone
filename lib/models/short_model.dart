/// Short video data model for YouTube Shorts
class ShortModel {
  final String title;
  final String channel;
  final String likes;
  final String thumbnail;

  const ShortModel({
    required this.title,
    required this.channel,
    required this.likes,
    required this.thumbnail,
  });

  /// Convert from Map (useful for JSON or mock data)
  factory ShortModel.fromMap(Map<String, String> map) {
    return ShortModel(
      title: map['title'] ?? '',
      channel: map['channel'] ?? '',
      likes: map['likes'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
    );
  }
}
