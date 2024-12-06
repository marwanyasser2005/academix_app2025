import 'package:flutter/material.dart';

class CoursesListFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Search',
              prefixIcon: Icon(Icons.search),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                FilterItem(title: 'Category 1'),
                FilterItem(title: 'Category 2'),
                // Add more FilterItem widgets as needed
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Apply'),
          ),
        ],
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  final String title;

  FilterItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(value: false, onChanged: (value) {}),
    );
  }
}
