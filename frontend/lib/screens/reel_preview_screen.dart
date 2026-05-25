import 'package:flutter/material.dart';

class ReelPreviewScreen extends StatelessWidget {
  final String reelId;
  const ReelPreviewScreen({super.key, required this.reelId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reel Preview')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 300,
              height: 500,
              color: Colors.black,
              child: const Center(child: Text('Video Preview Placeholder', style: TextStyle(color: Colors.white))),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Post to Platforms')),
          ],
        ),
      ),
    );
  }
}
