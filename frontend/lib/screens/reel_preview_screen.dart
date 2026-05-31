import 'package:flutter/material.dart';

class ReelPreviewScreen extends StatelessWidget {
  final String reelId;
  const ReelPreviewScreen({super.key, required this.reelId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preview & Post')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            // Video Preview Placeholder
            Container(
              height: 450,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFF121212),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: Icon(Icons.play_circle_outline, size: 80, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 24),

            // AI Recommendation Card
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.blue.withOpacity(0.3)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.auto_awesome, size: 20, color: Colors.blue),
                      SizedBox(width: 8),
                      Text('AI Posting Strategy', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text('Recommended Platform: Instagram', style: TextStyle(fontSize: 14)),
                  const Text('Best Time: Today at 7:00 PM', style: TextStyle(fontSize: 14)),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: ['#travel', '#vibe', '#cinematic'].map((tag) => Chip(
                      label: Text(tag, style: const TextStyle(fontSize: 12)),
                      backgroundColor: Colors.white10,
                    )).toList(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Post Now'),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Schedule for Best Time', style: TextStyle(color: Colors.white54)),
            ),
          ],
        ),
      ),
    );
  }
}
