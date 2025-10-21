import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Your channel',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile header
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Profile picture
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
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
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  // Channel handle and subscribers
                  Text(
                    '@yourchannel • 0 subscribers',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  const SizedBox(height: 16),
                  // Action buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildActionButton(
                        icon: Icons.edit,
                        label: 'Manage',
                        onPressed: () {},
                      ),
                      _buildActionButton(
                        icon: Icons.share,
                        label: 'Share',
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            // Menu items
            _buildMenuItem(
              icon: Icons.video_library,
              title: 'Your videos',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.download,
              title: 'Downloads',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.playlist_play,
              title: 'Your movies',
              onTap: () {},
            ),
            const Divider(),
            _buildMenuItem(icon: Icons.history, title: 'History', onTap: () {}),
            _buildMenuItem(
              icon: Icons.watch_later,
              title: 'Watch later',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.thumb_up_outlined,
              title: 'Liked videos',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.playlist_add,
              title: 'Playlists',
              onTap: () {},
            ),
            const Divider(),
            _buildMenuItem(
              icon: Icons.settings,
              title: 'Settings',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.help_outline,
              title: 'Help & feedback',
              onTap: () {},
            ),
            const SizedBox(height: 20),
            // YouTube Premium promotion
            Container(
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
                      Icon(Icons.play_circle_fill, color: Colors.red, size: 32),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: Text(
                          'YouTube Premium',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Get YouTube Premium to watch ad-free, download videos, and play in the background.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
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
            ),
          ],
        ),
      ),
    );
  }

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
            color: Colors.grey[100],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, size: 24),
      title: Text(title, style: const TextStyle(fontSize: 16)),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
