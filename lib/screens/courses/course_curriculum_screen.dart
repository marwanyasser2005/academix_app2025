import 'package:flutter/material.dart';

class CourseCurriculumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Curriculum'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          CurriculumItem(
            title: 'Introduction to Magic',
            subtitle: 'Learn the basics of magic',
          ),
          CurriculumItem(
            title: 'Advanced Spells',
            subtitle: 'Master complex spells',
          ),
          // Add more CurriculumItem widgets as needed
        ],
      ),
    );
  }
}

class CurriculumItem extends StatelessWidget {
  final String title;
  final String subtitle;

  CurriculumItem({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
