import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(onPressed: () => Navigator.pushNamed(context, '/settings'), icon: const Icon(Icons.settings)),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Connected Accounts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const ListTile(leading: Icon(Icons.check_circle, color: Colors.green), title: Text('Instagram')),
          const ListTile(leading: Icon(Icons.check_circle, color: Colors.green), title: Text('TikTok')),
          const ListTile(leading: Icon(Icons.cancel, color: Colors.red), title: Text('Facebook')),
          const SizedBox(height: 20),
          const Text('Your Past Reels', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const Card(child: ListTile(title: Text('Trip to Hawaii'), subtitle: Text('Completed'))),
        ],
      ),
    );
  }
}
