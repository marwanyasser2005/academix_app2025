import 'package:flutter/material.dart';

class CourseDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Details'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset('path_to_image'),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Course Title',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text('Course Description'),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Enroll Now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
