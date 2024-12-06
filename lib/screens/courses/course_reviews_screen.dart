import 'package:flutter/material.dart';

class CourseReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),
        backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          ReviewItem(
            reviewer: 'John Doe',
            rating: 4.8,
            comment: 'Great course! Highly recommended.',
          ),
          ReviewItem(
            reviewer: 'Jane Smith',
            rating: 4.5,
            comment: 'Very informative and well-structured.',
          ),
          // Add more ReviewItem widgets as needed
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String reviewer;
  final double rating;
  final String comment;

  ReviewItem({required this.reviewer, required this.rating, required this.comment});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(reviewer[0]),
      ),
      title: Text(reviewer),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Rating: $rating'),
          Text(comment),
        ],
      ),
    );
  }
}
