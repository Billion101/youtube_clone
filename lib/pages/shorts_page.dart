import 'package:flutter/material.dart';

class ShortsPage extends StatelessWidget {
  const ShortsPage({super.key});

  // Mock shorts data
  final List<Map<String, String>> shorts = const [
    {
      'title': 'Quick Flutter Tip #1',
      'channel': 'Flutter Tips',
      'likes': '12K',
      'thumbnail': 'https://via.placeholder.com/300x500/FF0000/FFFFFF?text=Flutter+Tip',
    },
    {
      'title': 'Amazing Animation in 60 seconds',
      'channel': 'Animation Master',
      'likes': '25K',
      'thumbnail': 'https://via.placeholder.com/300x500/00FF00/FFFFFF?text=Animation',
    },
    {
      'title': 'Code Review in 1 Minute',
      'channel': 'Code Reviewer',
      'likes': '8.5K',
      'thumbnail': 'https://via.placeholder.com/300x500/0000FF/FFFFFF?text=Code+Review',
    },
    {
      'title': 'UI Design Hack',
      'channel': 'Design Hacks',
      'likes': '18K',
      'thumbnail': 'https://via.placeholder.com/300x500/FF00FF/FFFFFF?text=UI+Hack',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text(
          'Shorts',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shorts.length,
        itemBuilder: (context, index) {
          final short = shorts[index];
          return ShortVideoCard(short: short);
        },
      ),
    );
  }
}

class ShortVideoCard extends StatelessWidget {
  final Map<String, String> short;

  const ShortVideoCard({super.key, required this.short});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Video background
        Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey[800],
          child: const Center(
            child: Icon(
              Icons.play_circle_outline,
              size: 80,
              color: Colors.white,
            ),
          ),
        ),
        // Right side actions
        Positioned(
          right: 12,
          bottom: 100,
          child: Column(
            children: [
              // Like button
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_up_outlined, color: Colors.white, size: 28),
                    onPressed: () {},
                  ),
                  Text(
                    short['likes']!,
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Dislike button
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.thumb_down_outlined, color: Colors.white, size: 28),
                    onPressed: () {},
                  ),
                  const Text(
                    'Dislike',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Comment button
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.comment_outlined, color: Colors.white, size: 28),
                    onPressed: () {},
                  ),
                  const Text(
                    'Comment',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Share button
              Column(
                children: [
                  IconButton(
                    icon: const Icon(Icons.share_outlined, color: Colors.white, size: 28),
                    onPressed: () {},
                  ),
                  const Text(
                    'Share',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // More options
              IconButton(
                icon: const Icon(Icons.more_vert, color: Colors.white, size: 28),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // Bottom info
        Positioned(
          left: 12,
          right: 80,
          bottom: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Channel info
              Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.red,
                    child: Text(
                      short['channel']![0],
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    short['channel']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
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
              ),
              const SizedBox(height: 8),
              // Video title
              Text(
                short['title']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}