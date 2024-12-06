import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Bookmark'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: [
          BookmarkItem(
            title: 'Magic Spells 101',
            subtitle: 'Learn basic spells',
            imageUrl: 'path_to_image',
          ),
          BookmarkItem(
            title: 'Potion Making',
            subtitle: 'Brew magical potions',
            imageUrl: 'path_to_image',
          ),
          // Add more BookmarkItem widgets as needed
        ],
      ),
    );
  }
}

class BookmarkItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;

  BookmarkItem({required this.title, required this.subtitle, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(imageUrl),
      title: Text(title),
      subtitle: Text(subtitle),
    );
  }
}
