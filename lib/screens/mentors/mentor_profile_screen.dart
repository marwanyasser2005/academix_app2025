import 'package:flutter/material.dart';

class MentorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mentor Details'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('path_to_image'),
          ),
          SizedBox(height: 16),
          Text(
            'Christopher J. Senter',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Text('Senior Mentor'),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Follow'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Message'),
          ),
          SizedBox(height: 16),
          Text('Courses'),
          ListView(
            shrinkWrap: true,
            children: [
              CourseItem(
                title: 'Magic Spells 101',
                subtitle: 'Learn basic spells',
                imageUrl: 'path_to_image',
              ),
              CourseItem(
                title: 'Potion Making',
                subtitle: 'Brew magical potions',
                imageUrl: 'path_to_image',
              ),
              // Add more CourseItem widgets as needed
            ],
          ),
        ],
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  CourseItem({required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
