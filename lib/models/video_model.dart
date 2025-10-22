/// Video data model for regular YouTube videos
class VideoModel {
  final String title;
  final String channel;
  final String views;
  final String time;
  final String thumbnail;
  final String channelAvatar;
  final String duration;

  const VideoModel({
    required this.title,
    required this.channel,
    required this.views,
    required this.time,
    required this.thumbnail,
    required this.channelAvatar,
    this.duration = '10:25',
  });

  /// Convert from Map (useful for JSON or mock data)
  factory VideoModel.fromMap(Map<String, String> map) {
    return VideoModel(
      title: map['title'] ?? '',
      channel: map['channel'] ?? '',
      views: map['views'] ?? '',
      time: map['time'] ?? '',
      thumbnail: map['thumbnail'] ?? '',
      channelAvatar: map['channelAvatar'] ?? '',
      duration: map['duration'] ?? '10:25',
    );
  }
}
