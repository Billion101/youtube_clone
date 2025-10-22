import 'package:flutter/material.dart';
import '../models/short_model.dart';

/// A reusable widget that displays a short video card
/// Used in the shorts page for vertical scrolling videos
class ShortVideoCard extends StatelessWidget {
  final ShortModel short;

  const ShortVideoCard({super.key, required this.short});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Video background
        _buildVideoBackground(),
        // Right side action buttons
        _buildRightSideActions(),
        // Bottom video information
        _buildBottomInfo(),
      ],
    );
  }

  /// Builds the video background with play button
  Widget _buildVideoBackground() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey[800],
      child: const Center(
        child: Icon(Icons.play_circle_outline, size: 80, color: Colors.white),
      ),
    );
  }

  /// Builds the right side action buttons (like, dislike, comment, share)
  Widget _buildRightSideActions() {
    return Positioned(
      right: 12,
      bottom: 100,
      child: Column(
        children: [
          _buildActionButton(
            icon: Icons.thumb_up_outlined,
            label: short.likes,
            onTap: () {
              // TODO: Implement like functionality
            },
          ),
          const SizedBox(height: 20),
          _buildActionButton(
            icon: Icons.thumb_down_outlined,
            label: 'Dislike',
            onTap: () {
              // TODO: Implement dislike functionality
            },
          ),
          const SizedBox(height: 20),
          _buildActionButton(
            icon: Icons.comment_outlined,
            label: 'Comment',
            onTap: () {
              // TODO: Implement comment functionality
            },
          ),
          const SizedBox(height: 20),
          _buildActionButton(
            icon: Icons.share_outlined,
            label: 'Share',
            onTap: () {
              // TODO: Implement share functionality
            },
          ),
          const SizedBox(height: 20),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white, size: 28),
            onPressed: () {
              // TODO: Implement more options functionality
            },
          ),
        ],
      ),
    );
  }

  /// Builds a single action button with icon and label
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, color: Colors.white, size: 28),
          onPressed: onTap,
        ),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  /// Builds the bottom information section with channel and video details
  Widget _buildBottomInfo() {
    return Positioned(
      left: 12,
      right: 80,
      bottom: 20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Channel information with subscribe button
          _buildChannelInfo(),
          const SizedBox(height: 8),
          // Video title
          _buildVideoTitle(),
        ],
      ),
    );
  }

  /// Builds the channel information row with avatar and subscribe button
  Widget _buildChannelInfo() {
    return Row(
      children: [
        // Channel avatar
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.red,
          child: Text(
            short.channel[0], // First letter of channel name
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        const SizedBox(width: 8),
        // Channel name
        Text(
          short.channel,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 8),
        // Subscribe button
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Subscribe',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  /// Builds the video title text
  Widget _buildVideoTitle() {
    return Text(
      short.title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
