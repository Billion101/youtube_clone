import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Mock video data
  final List<Map<String, String>> videos = const [
    {
      'title': 'Flutter Tutorial for Beginners',
      'channel': 'Flutter Dev',
      'views': '1.2M views',
      'time': '2 days ago',
      'thumbnail': 'https://via.placeholder.com/320x180/FF0000/FFFFFF?text=Flutter+Tutorial',
      'channelAvatar': 'https://via.placeholder.com/40x40/0000FF/FFFFFF?text=FD',
    },
    {
      'title': 'Building Amazing Apps with Dart',
      'channel': 'Code Master',
      'views': '850K views',
      'time': '1 week ago',
      'thumbnail': 'https://via.placeholder.com/320x180/00FF00/FFFFFF?text=Dart+Apps',
      'channelAvatar': 'https://via.placeholder.com/40x40/FF00FF/FFFFFF?text=CM',
    },
    {
      'title': 'Mobile Development Best Practices',
      'channel': 'Tech Guru',
      'views': '2.1M views',
      'time': '3 days ago',
      'thumbnail': 'https://via.placeholder.com/320x180/0000FF/FFFFFF?text=Mobile+Dev',
      'channelAvatar': 'https://via.placeholder.com/40x40/FFFF00/000000?text=TG',
    },
    {
      'title': 'UI/UX Design Principles',
      'channel': 'Design Pro',
      'views': '650K views',
      'time': '5 days ago',
      'thumbnail': 'https://via.placeholder.com/320x180/FF00FF/FFFFFF?text=UI+UX',
      'channelAvatar': 'https://via.placeholder.com/40x40/00FFFF/000000?text=DP',
    },
    {
      'title': 'Advanced Flutter Animations',
      'channel': 'Animation Studio',
      'views': '1.8M views',
      'time': '1 day ago',
      'thumbnail': 'https://via.placeholder.com/320x180/FFFF00/000000?text=Animations',
      'channelAvatar': 'https://via.placeholder.com/40x40/FF0000/FFFFFF?text=AS',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Icon(Icons.play_circle_fill, color: Colors.red, size: 32),
            const SizedBox(width: 8),
            const Text(
              'YouTube',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.cast, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          const CircleAvatar(
            radius: 16,
            backgroundColor: Colors.blue,
            child: Text('U', style: TextStyle(color: Colors.white)),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return VideoCard(video: video);
        },
      ),
    );
  }
}

class VideoCard extends StatelessWidget {
  final Map<String, String> video;

  const VideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Video thumbnail
        Container(
          width: double.infinity,
          height: 200,
          color: Colors.grey[300],
          child: Stack(
            children: [
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
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    '10:25',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Video info
        Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Channel avatar
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.blue,
                child: Text(
                  video['channel']![0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 12),
              // Video details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video['title']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      '${video['channel']} • ${video['views']} • ${video['time']}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              // More options
              IconButton(
                icon: const Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}