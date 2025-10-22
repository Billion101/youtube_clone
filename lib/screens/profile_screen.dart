import 'package:flutter/material.dart';
import '../core/app_colors.dart';

/// Profile screen that shows user profile, channel info, and menu options
/// Includes user's channel details and various YouTube features
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundLight,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  /// Builds the app bar for profile screen
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      backgroundColor: AppColors.backgroundLight,
      elevation: 0,
      title: const Text(
        'Your channel',
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
          icon: const Icon(Icons.search, color: AppColors.iconPrimary),
          onPressed: () {
            // TODO: Implement search functionality
          },
        ),
        IconButton(
          icon: const Icon(Icons.more_vert, color: AppColors.iconPrimary),
          onPressed: () {
            // TODO: Implement more options functionality
          },
        ),
      ],
    );
  }

  /// Builds the main body content
  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Profile header section
          _buildProfileHeader(),
          const Divider(),
          // Menu items section
          _buildMenuItems(),
          // YouTube Premium promotion
          _buildPremiumPromotion(),
        ],
      ),
    );
  }

  /// Builds the profile header with avatar, name, and action buttons
  Widget _buildProfileHeader() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // Profile picture
          const CircleAvatar(
            radius: 50,
            backgroundColor: AppColors.accent,
            child: Text(
              'U',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          // Channel name
          const Text(
            'Your Channel',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.textPrimary,
            ),
          ),
          const SizedBox(height: 8),
          // Channel handle and subscribers
          Text(
            '@yourchannel • 0 subscribers',
            style: TextStyle(fontSize: 14, color: AppColors.textSecondary),
          ),
          const SizedBox(height: 16),
          // Action buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildActionButton(
                icon: Icons.edit,
                label: 'Manage',
                onPressed: () {
                  // TODO: Implement manage functionality
                },
              ),
              _buildActionButton(
                icon: Icons.share,
                label: 'Share',
                onPressed: () {
                  // TODO: Implement share functionality
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Builds an action button with icon and label
  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.cardBackground,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24, color: AppColors.iconPrimary),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 12, color: AppColors.textPrimary),
        ),
      ],
    );
  }

  /// Builds the menu items section
  Widget _buildMenuItems() {
    return Column(
      children: [
        // Video-related items
        _buildMenuItem(
          icon: Icons.video_library,
          title: 'Your videos',
          onTap: () {
            // TODO: Implement your videos functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.download,
          title: 'Downloads',
          onTap: () {
            // TODO: Implement downloads functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.playlist_play,
          title: 'Your movies',
          onTap: () {
            // TODO: Implement your movies functionality
          },
        ),
        const Divider(),
        // History and saved items
        _buildMenuItem(
          icon: Icons.history,
          title: 'History',
          onTap: () {
            // TODO: Implement history functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.watch_later,
          title: 'Watch later',
          onTap: () {
            // TODO: Implement watch later functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.thumb_up_outlined,
          title: 'Liked videos',
          onTap: () {
            // TODO: Implement liked videos functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.playlist_add,
          title: 'Playlists',
          onTap: () {
            // TODO: Implement playlists functionality
          },
        ),
        const Divider(),
        // Settings and help
        _buildMenuItem(
          icon: Icons.settings,
          title: 'Settings',
          onTap: () {
            // TODO: Implement settings functionality
          },
        ),
        _buildMenuItem(
          icon: Icons.help_outline,
          title: 'Help & feedback',
          onTap: () {
            // TODO: Implement help functionality
          },
        ),
      ],
    );
  }

  /// Builds a single menu item
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 24, color: AppColors.iconPrimary),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: AppColors.textPrimary),
      ),
      trailing: const Icon(Icons.chevron_right, color: AppColors.iconSecondary),
      onTap: onTap,
    );
  }

  /// Builds the YouTube Premium promotion section
  Widget _buildPremiumPromotion() {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.blue[200]!),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.play_circle_fill, color: AppColors.primary, size: 32),
              const SizedBox(width: 12),
              const Expanded(
                child: Text(
                  'YouTube Premium',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Text(
            'Get YouTube Premium to watch ad-free, download videos, and play in the background.',
            style: TextStyle(fontSize: 14, color: AppColors.textPrimary),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // TODO: Implement premium subscription
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.accent,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Try it free'),
            ),
          ),
        ],
      ),
    );
  }
}
