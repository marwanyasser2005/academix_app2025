import 'package:flutter/material.dart';

class MentorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Mentors'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return _buildMentorItem(
              'Mentor $index',
              'Expertise $index',
              'https://via.placeholder.com/50',
            );
          },
        ),
      ),
    );
  }

  Widget _buildMentorItem(String name, String expertise, String avatarUrl) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(avatarUrl),
              radius: 30,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text(
                    expertise,
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Handle mentor profile navigation
              },
              child: Text('View Profile'),
            ),
          ],
        ),
      ),
    );
  }
}