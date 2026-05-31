import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Manage Social Accounts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ElevatedButton(onPressed: () {}, child: const Text('Connect Instagram')),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text('Connect TikTok')),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: const Text('Connect Facebook')),
        ],
      ),
    );
  }
}
