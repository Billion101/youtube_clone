import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../data/mock_data.dart';
import '../widgets/video_card.dart';

/// Subscriptions screen that shows user's subscribed channels and recent videos
/// Displays channels horizontally and recent videos from subscriptions
class SubscriptionsScreen extends StatelessWidget {
  const SubscriptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  /// Builds the app bar for subscriptions screen
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundLight,
      elevation: 0,
      title: const Text(
        'Subscriptions',
        style: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.cast, color: AppColors.iconPrimary),
          onPressed: () {
            // TODO: Implement cast functionality
          },
        ),
        IconButton(
          icon: const Icon(
            Icons.notifications_outlined,
            color: AppColors.iconPrimary,
          ),
          onPressed: () {
            // TODO: Implement notifications functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.search, color: AppColors.iconPrimary),
          onPressed: () {
            // TODO: Implement search functionality
          },
        ),
      ],
    );
  }

  /// Builds the main body content with subscribed channels and recent videos
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Subscribed channels horizontal list
          _buildSubscribedChannels(),
          const Divider(height: 1),
          // Recent videos section
          _buildSectionTitle('Recent videos'),
          _buildRecentVideos(),
        ],
      ),
    );
  }

  /// Builds the horizontal list of subscribed channels
  Widget _buildSubscribedChannels() {
    final channels = MockData.getSubscribedChannels();

    return Container(
      height: 120,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: channels.length,
        itemBuilder: (context, index) {
          final channel = channels[index];
          return _buildChannelAvatar(channel);
        },
      ),
    );
  }

  /// Builds a single channel avatar in the horizontal list
  Widget _buildChannelAvatar(Map<String, String> channel) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.accent,
            child: Text(
              channel['channelName']![0],
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            channel['channelName']!,
            style: const TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  /// Builds a section title
  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  /// Builds the list of recent videos from subscriptions
  Widget _buildRecentVideos() {
    final videos = MockData.videos.take(3).toList(); // Show first 3 videos

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return VideoCard(video: video);
      },
    );
  }
}
