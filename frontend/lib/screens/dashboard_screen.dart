import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/settings'),
            icon: const Icon(Icons.settings_outlined),
          ),
          const SizedBox(width: 8),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            'Connected Platforms',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          _buildPlatformCard('Instagram', true),
          _buildPlatformCard('TikTok', true),
          _buildPlatformCard('Facebook', false),
          const SizedBox(height: 40),
          const Text(
            'Recent Reels',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            childAspectRatio: 0.7,
            children: [
              _buildReelThumbnail('Hawaii Trip', '2 days ago'),
              _buildReelThumbnail('Paris 2023', '1 week ago'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPlatformCard(String name, bool isConnected) {
    return Card(
      color: const Color(0xFF121212),
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(name),
        trailing: Text(
          isConnected ? 'Connected' : 'Not Connected',
          style: TextStyle(color: isConnected ? Colors.blue : Colors.white38),
        ),
      ),
    );
  }

  Widget _buildReelThumbnail(String title, String date) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF121212),
        borderRadius: BorderRadius.circular(8),
        image: const DecorationImage(
          image: NetworkImage('https://via.placeholder.com/150'),
          fit: BoxFit.cover,
          opacity: 0.5,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(date, style: const TextStyle(fontSize: 10, color: Colors.white70)),
              ],
            ),
          ),
          const Center(child: Icon(Icons.play_arrow, size: 48)),
        ],
      ),
    );
  }
}
