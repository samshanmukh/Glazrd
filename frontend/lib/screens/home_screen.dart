import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Video Placeholder or Gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'Glazrd',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: -1),
                  ),
                  const Spacer(),
                  const Text(
                    'Drop photos. Get cinematic reels.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      // Trigger One-Tap Flow
                    },
                    child: Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(24),
                        border: Border.all(color: Colors.white24, width: 2),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.bolt, size: 64, color: Colors.blue),
                          SizedBox(height: 16),
                          Text('Upload & Generate', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('AI will detect vibe & sync trends', style: TextStyle(color: Colors.white54)),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.group_add_outlined),
                    label: const Text('Start a Group Trip Album'),
                    style: TextButton.styleFrom(foregroundColor: Colors.white70),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, '/dashboard'),
              icon: const Icon(Icons.person_outline, size: 28),
            ),
          ),
        ],
      ),
    );
  }
}
