import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: Icon(Icons.search, color: Colors.grey),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 8),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Recent Search'),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildRecentSearchItem('Flutter'),
                _buildRecentSearchItem('Dart'),
                _buildRecentSearchItem('UI Design'),
                _buildRecentSearchItem('Mobile Development'),
              ],
            ),
            SizedBox(height: 32),
            _buildSectionTitle('Popular Searches'),
            SizedBox(height: 16),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildPopularSearchItem('Web Development'),
                _buildPopularSearchItem('Graphic Design'),
                _buildPopularSearchItem('Data Science'),
                _buildPopularSearchItem('Finance & Accounting'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
    );
  }

  Widget _buildRecentSearchItem(String title) {
    return Chip(
      label: Text(title, style: TextStyle(fontSize: 14)),
      backgroundColor: Colors.grey[100],
      deleteIcon: Icon(Icons.close, size: 18),
      onDeleted: () {
        // Handle deletion
      },
    );
  }

  Widget _buildPopularSearchItem(String title) {
    return Chip(
      label: Text(title, style: TextStyle(fontSize: 14, color: Colors.white)),
      backgroundColor: Colors.blue,
    );
  }
}
