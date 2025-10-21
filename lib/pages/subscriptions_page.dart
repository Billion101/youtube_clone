import 'package:flutter/material.dart';

class SubscriptionsPage extends StatelessWidget {
  const SubscriptionsPage({super.key});

  // Mock subscription data
  final List<Map<String, String>> subscriptions = const [
    {
      'channelName': 'Flutter Dev',
      'subscribers': '2.1M subscribers',
      'avatar': 'https://via.placeholder.com/60x60/FF0000/FFFFFF?text=FD',
      'isSubscribed': 'true',
    },
    {
      'channelName': 'Code Master',
      'subscribers': '1.5M subscribers',
      'avatar': 'https://via.placeholder.com/60x60/00FF00/FFFFFF?text=CM',
      'isSubscribed': 'true',
    },
    {
      'channelName': 'Tech Guru',
      'subscribers': '3.2M subscribers',
      'avatar': 'https://via.placeholder.com/60x60/0000FF/FFFFFF?text=TG',
      'isSubscribed': 'true',
    },
    {
      'channelName': 'Design Pro',
      'subscribers': '890K subscribers',
      'avatar': 'https://via.placeholder.com/60x60/FF00FF/FFFFFF?text=DP',
      'isSubscribed': 'true',
    },
    {
      'channelName': 'Animation Studio',
      'subscribers': '1.8M subscribers',
      'avatar': 'https://via.placeholder.com/60x60/FFFF00/000000?text=AS',
      'isSubscribed': 'true',
    },
    {
      'channelName': 'Mobile Dev Tips',
      'subscribers': '650K subscribers',
      'avatar': 'https://via.placeholder.com/60x60/00FFFF/000000?text=MD',
      'isSubscribed': 'true',
    },
  ];

  // Recent videos from subscribed channels
  final List<Map<String, String>> recentVideos = const [
    {
      'title': 'New Flutter 3.0 Features Explained',
      'channel': 'Flutter Dev',
      'views': '500K views',
      'time': '2 hours ago',
      'thumbnail': 'https://via.placeholder.com/320x180/FF0000/FFFFFF?text=Flutter+3.0',
    },
    {
      'title': 'Clean Code Principles Every Developer Should Know',
      'channel': 'Code Master',
      'views': '1.2M views',
      'time': '1 day ago',
      'thumbnail': 'https://via.placeholder.com/320x180/00FF00/FFFFFF?text=Clean+Code',
    },
    {
      'title': 'Building Scalable Mobile Apps',
      'channel': 'Tech Guru',
      'views': '800K views',
      'time': '3 days ago',
      'thumbnail': 'https://via.placeholder.com/320x180/0000FF/FFFFFF?text=Scalable+Apps',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Subscriptions',
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
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Subscribed channels horizontal list
            Container(
              height: 120,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: subscriptions.length,
                itemBuilder: (context, index) {
                  final channel = subscriptions[index];
                  return ChannelAvatar(channel: channel);
                },
              ),
            ),
            const Divider(height: 1),
            // Recent videos section
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'Recent videos',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Recent videos list
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recentVideos.length,
              itemBuilder: (context, index) {
                final video = recentVideos[index];
                return RecentVideoCard(video: video);
              },
            ),
            // All subscriptions section
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'All subscriptions',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // All subscriptions list
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: subscriptions.length,
              itemBuilder: (context, index) {
                final channel = subscriptions[index];
                return SubscriptionCard(channel: channel);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ChannelAvatar extends StatelessWidget {
  final Map<String, String> channel;

  const ChannelAvatar({super.key, required this.channel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.blue,
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
}

class RecentVideoCard extends StatelessWidget {
  final Map<String, String> video;

  const RecentVideoCard({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Video thumbnail
          Container(
            width: 120,
            height: 68,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Icon(
              Icons.play_circle_outline,
              size: 32,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
          // Video info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  video['title']!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '${video['channel']} • ${video['views']} • ${video['time']}',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final Map<String, String> channel;

  const SubscriptionCard({super.key, required this.channel});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.blue,
        child: Text(
          channel['channelName']![0],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: Text(
        channel['channelName']!,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      subtitle: Text(channel['subscribers']!),
      trailing: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          'Subscribed',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      onTap: () {},
    );
  }
}