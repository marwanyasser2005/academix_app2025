import 'package:flutter/material.dart';

class RemoveMyBookmark extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Remove My Bookmark'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Text('Are you sure you want to remove this bookmark?'),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            child: Text('Confirm'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
