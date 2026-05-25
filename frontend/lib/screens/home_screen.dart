import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glazrd'),
        actions: [
          TextButton(onPressed: () => Navigator.pushNamed(context, '/login'), child: const Text('Login')),
          TextButton(onPressed: () => Navigator.pushNamed(context, '/signup'), child: const Text('Sign Up')),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Transform your trip photos into cinematic reels.', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 40),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(12),
                color: Colors.blue.withOpacity(0.05),
              ),
              child: const Center(
                child: Text('Drag & drop photos here'),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: const Text('Upload Photos')),
          ],
        ),
      ),
    );
  }
}
