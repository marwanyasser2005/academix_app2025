import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          NotificationItem(
            title: 'New Course Available',
            subtitle: 'Magic Spells 101 is now available',
          ),
          NotificationItem(
            title: 'Course Completed',
            subtitle: 'You have completed Potion Making',
          ),
          // Add more NotificationItem widgets as needed
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;

  NotificationItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
