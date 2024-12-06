import 'package:academix_app/screens/home/transaction_screen.dart';
import 'package:flutter/material.dart';

import '../profile/profile_screen.dart';
import 'home_screen.dart';
import 'index_screen.dart';

class MyCoursesScreen extends StatefulWidget {
  const MyCoursesScreen({Key? key}) : super(key: key);

  @override
  _MyCoursesScreenState createState() => _MyCoursesScreenState();
}

class _MyCoursesScreenState extends State<MyCoursesScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('My Courses'),
          backgroundColor: Colors.red,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Completed'),
              Tab(text: 'Lessons'),
              Tab(text: 'Certificate'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildCompletedCourses(),
            _buildLessons(),
            _buildCertificate(),
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildCompletedCourses() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildCourseCard(
          'Graphic Design Advanced',
          'https://i.ibb.co/1dYtp2D/download-2.jpg',
          'Completed',
          '2023-10-01',
        ),
        _buildCourseCard(
          'Graphic Design Advertisement',
          'https://i.ibb.co/1dYtp2D/download-2.jpg',
          'Completed',
          '2023-09-15',
        ),
        // Add more course cards as needed
      ],
    );
  }

  Widget _buildLessons() {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        _buildLessonCard(
          'Lesson 1: Introduction',
          'https://i.ibb.co/1dYtp2D/download-2.jpg',
          'In Progress',
        ),
        _buildLessonCard(
          'Lesson 2: Basics of 3D Modeling',
          'https://i.ibb.co/1dYtp2D/download-2.jpg',
          'Not Started',
        ),
        // Add more lesson cards as needed
      ],
    );
  }

  Widget _buildCertificate() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            'https://i.ibb.co/vmK0c8j/2024-11-04-1.png', // Replace with actual certificate image URL
            height: 200,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Handle download certificate action
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              'Download Certificate',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCourseCard(String title, String imageUrl, String status, String date) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          '$status on $date',
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        trailing: Icon(
          status.toLowerCase() == 'completed' ? Icons.check_circle : Icons.hourglass_empty,
          color: status.toLowerCase() == 'completed' ? Colors.green : Colors.orange,
        ),
      ),
    );
  }

  Widget _buildLessonCard(String title, String imageUrl, String status) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.network(
          imageUrl,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          status,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        trailing: Icon(
          status.toLowerCase() == 'in progress' ? Icons.play_circle_fill : Icons.hourglass_empty,
          color: status.toLowerCase() == 'in progress' ? Colors.blue : Colors.orange,
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'My Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Index',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.receipt),
          label: 'Transaction',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _currentIndex,
      selectedItemColor: Colors.red,
      onTap: (index) {
        setState(() {
          _currentIndex = index;
        });
        _navigateToPage(index);
      },
    );
  }

  void _navigateToPage(int index) {
    switch (index) {
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
        break;
      case 1:
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyCoursesScreen()));
        break;
      case 2:
        Navigator.push(context, MaterialPageRoute(builder: (context) => IndexScreen()));
        break;
      case 3:
        Navigator.push(context, MaterialPageRoute(builder: (context) => TransactionScreen()));
        break;
      case 4:
        Navigator.push(context, MaterialPageRoute(builder: (context) => Profiles()));
        break;
      default:
        break;
    }
  }
}
