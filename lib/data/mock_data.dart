import '../models/video_model.dart';
import '../models/short_model.dart';

/// Mock data for the YouTube clone app
/// In a real app, this would come from an API
class MockData {
  /// Sample video data for the home page
  static const List<Map<String, String>> videosData = [
    {
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Flutter Dev',
      'views': '1.2M views',
      'time': '2 days ago',
      'thumbnail':
          'https://via.placeholder.com/320x180/FF0000/FFFFFF?text=Flutter+Tutorial',
      'channelAvatar':
          'https://via.placeholder.com/40x40/0000FF/FFFFFF?text=FD',
    },
    {
      'title': 'Building Amazing Apps with Dart',
      'channel': 'Code Master',
      'views': '850K views',
      'time': '1 week ago',
      'thumbnail':
          'https://via.placeholder.com/320x180/00FF00/FFFFFF?text=Dart+Apps',
      'channelAvatar':
          'https://via.placeholder.com/40x40/FF00FF/FFFFFF?text=CM',
    },
    {
      'title': 'Mobile Development Best Practices',
      'channel': 'Tech Guru',
      'views': '2.1M views',
      'time': '3 days ago',
      'thumbnail':
          'https://via.placeholder.com/320x180/0000FF/FFFFFF?text=Mobile+Dev',
      'channelAvatar':
          'https://via.placeholder.com/40x40/FFFF00/000000?text=TG',
    },
    {
      'title': 'UI/UX Design Principles',
      'channel': 'Design Pro',
      'views': '650K views',
      'time': '5 days ago',
      'thumbnail':
          'https://via.placeholder.com/320x180/FF00FF/FFFFFF?text=UI+UX',
      'channelAvatar':
          'https://via.placeholder.com/40x40/00FFFF/000000?text=DP',
    },
    {
      'title': 'Advanced Flutter Animations',
      'channel': 'Animation Studio',
      'views': '1.8M views',
      'time': '1 day ago',
      'thumbnail':
          'https://via.placeholder.com/320x180/FFFF00/000000?text=Animations',
      'channelAvatar':
          'https://via.placeholder.com/40x40/FF0000/FFFFFF?text=AS',
    },
  ];

  /// Sample shorts data for the shorts page
  static const List<Map<String, String>> shortsData = [
    {
      'title': 'Quick Flutter Tip #1',
      'channel': 'Flutter Tips',
      'likes': '12K',
      'thumbnail':
          'https://via.placeholder.com/300x500/FF0000/FFFFFF?text=Flutter+Tip',
    },
    {
      'title': 'Amazing Animation in 60 seconds',
      'channel': 'Animation Master',
      'likes': '25K',
      'thumbnail':
          'https://via.placeholder.com/300x500/00FF00/FFFFFF?text=Animation',
    },
    {
      'title': 'Code Review in 1 Minute',
      'channel': 'Code Reviewer',
      'likes': '8.5K',
      'thumbnail':
          'https://via.placeholder.com/300x500/0000FF/FFFFFF?text=Code+Review',
    },
    {
      'title': 'UI Design Hack',
      'channel': 'Design Hacks',
      'likes': '18K',
      'thumbnail':
          'https://via.placeholder.com/300x500/FF00FF/FFFFFF?text=UI+Hack',
    },
  ];

  /// Sample subscribed channels data
  static const List<Map<String, String>> subscribedChannelsData = [
    {'channelName': 'Flutter Dev', 'subscribers': '2.1M subscribers'},
    {'channelName': 'Code Master', 'subscribers': '1.5M subscribers'},
    {'channelName': 'Tech Guru', 'subscribers': '3.2M subscribers'},
    {'channelName': 'Design Pro', 'subscribers': '890K subscribers'},
    {'channelName': 'Animation Studio', 'subscribers': '1.8M subscribers'},
    {'channelName': 'Mobile Dev Tips', 'subscribers': '650K subscribers'},
  ];

  /// Get list of VideoModel objects
  static List<VideoModel> get videos {
    return videosData.map((data) => VideoModel.fromMap(data)).toList();
  }

  /// Get list of ShortModel objects
  static List<ShortModel> get shorts {
    return shortsData.map((data) => ShortModel.fromMap(data)).toList();
  }

  /// Get list of subscribed channels
  static List<Map<String, String>> getSubscribedChannels() {
    return subscribedChannelsData;
  }
}
