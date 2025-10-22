import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import '../widgets/video_card.dart';
import '../widgets/custom_app_bar.dart';

/// Home screen that displays a list of videos
/// This is the main screen users see when they open the app
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Custom app bar with YouTube branding
      appBar: CustomAppBar.youtubeHome(),
      // List of video cards
      body: _buildVideoList(),
    );
  }

  /// Builds the scrollable list of video cards
  Widget _buildVideoList() {
    final videos = MockData.videos;

    return ListView.builder(
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return VideoCard(video: video);
      },
    );
  }
}
