import 'package:flutter/material.dart';
import '../models/video_model.dart';

/// A reusable widget that displays a video card
/// Used in the home page to show video information
class VideoCard extends StatelessWidget {
  final VideoModel video;

  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Video thumbnail section
        _buildVideoThumbnail(),
        // Video information section
        _buildVideoInfo(),
      ],
    );
  }

  /// Builds the video thumbnail with play button and duration
  Widget _buildVideoThumbnail() {
    return Container(
      width: double.infinity,
      height: 200,
      color: Colors.grey[300],
      child: Stack(
        children: [
          // Placeholder for video thumbnail
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey[400],
            child: const Icon(
              Icons.play_circle_outline,
              size: 64,
              color: Colors.white,
            ),
          ),
          // Video duration badge
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.8),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                video.duration,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the video information section with channel avatar and details
  Widget _buildVideoInfo() {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Channel avatar
          _buildChannelAvatar(),
          const SizedBox(width: 12),
          // Video details (title, channel, views, time)
          Expanded(child: _buildVideoDetails()),
          // More options button
          _buildMoreOptionsButton(),
        ],
      ),
    );
  }

  /// Builds the circular channel avatar
  Widget _buildChannelAvatar() {
    return CircleAvatar(
      radius: 20,
      backgroundColor: Colors.blue,
      child: Text(
        video.channel[0], // First letter of channel name
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  /// Builds the video details (title and metadata)
  Widget _buildVideoDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Video title
        Text(
          video.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4),
        // Video metadata (channel, views, time)
        Text(
          '${video.channel} • ${video.views} • ${video.time}',
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
      ],
    );
  }

  /// Builds the more options button
  Widget _buildMoreOptionsButton() {
    return IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {
        // TODO: Implement more options functionality
      },
    );
  }
}
