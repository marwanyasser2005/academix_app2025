import 'package:flutter/material.dart';
import 'package:academix_app/screens/courses/courses_screen.dart';
import 'package:academix_app/screens/courses/category_screen.dart'; // Import the category screen
import 'package:academix_app/screens/profile/profile_screen.dart';
import 'my_courses_screen.dart'; // Import the my courses screen
import 'index_screen.dart'; // Import the index screen
import 'transaction_screen.dart'; // Import the transaction screen

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFF6347), // Tomato
              Color(0xFFFFD700), // Gold
            ],
          ),
        ),
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildHeader(),
                    _buildTodaysSpecial(),
                    _buildCategories(),
                    _buildPopularCourses(),
                    _buildTopMentors(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search for...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.search, color: Colors.grey),
              ),
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        'Hi, Hana Mohammed\nWhat would you like to learn today? Search below.',
        style: TextStyle(fontSize: 18, color: Colors.white),
        maxLines: 2, // Limit to 2 lines
        overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
      ),
    );
  }

  Widget _buildTodaysSpecial() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.blue,
            Colors.purple,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: const Text(
        '25% OFF* Today\'s Special\nGet a Discount for Every Course Order only Valid for Today!',
        style: TextStyle(color: Colors.white, fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildCategories() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Categories', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        SizedBox(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildCategoryButton('3D Design', 'https://i.ibb.co/1dYtp2D/download-2.jpg/150'),
              _buildCategoryButton('Arts & Humanities', 'https://i.ibb.co/1dYtp2D/download-2.jpg/150'),
              _buildCategoryButton('Graphic Design', 'https://i.ibb.co/1dYtp2D/download-2.jpg/150'),
              _buildCategoryButton('SEE ALL', 'https://i.ibb.co/1dYtp2D/download-2.jpg/150'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCategoryButton(String category, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryScreen(),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Chip(
          avatar: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          label: Text(
            category,
            style: TextStyle(color: category == 'SEE ALL' ? Colors.blue : Colors.black),
          ),
          backgroundColor: category == 'SEE ALL' ? Colors.blue[50] : Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: category == 'SEE ALL' ? Colors.blue : Colors.transparent),
          ),
        ),
      ),
    );
  }

  Widget _buildPopularCourses() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Popular Courses', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildCourseCard('Graphic Design', 'Graphic Design Advanced', 'Free', 4.2, 7830, 'https://i.ibb.co/1dYtp2D/download-2.jpg/200x100'),
              _buildCourseCard('Graphic Design', 'Graphic Design Advertisement', 'Free', 4.5, 5670, 'https://i.ibb.co/1dYtp2D/download-2.jpg/200x100'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCourseCard(String category, String title, String price, double rating, int students, String imageUrl) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                imageUrl, // Replace with actual image URL
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category,
                  style: TextStyle(color: Colors.orange, fontSize: 12),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.star, color: Colors.amber, size: 16),
                    Text(
                      rating.toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '$students Std',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopMentors() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Top Mentors', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildMentorCard('Mentor 1', 'Title 1', 'https://i.ibb.co/nQx4z2g/462694013-3726652914311355-5598693106501714665-n.jpg/50'),
              _buildMentorCard('Mentor 2', 'Title 2', 'https://i.ibb.co/nQx4z2g/462694013-3726652914311355-5598693106501714665-n.jpg/50'),
              _buildMentorCard('Mentor 3', 'Title 3', 'https://i.ibb.co/nQx4z2g/462694013-3726652914311355-5598693106501714665-n.jpg/50'),
              _buildMentorCard('SEE ALL', '', 'https://i.ibb.co/nQx4z2g/462694013-3726652914311355-5598693106501714665-n.jpg/60'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildMentorCard(String name, String title, String imageUrl) {
    return Container(
      width: 100,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrl), // Replace with actual image URL
          ),
          SizedBox(height: 8),
          Text(
            name,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          if (title.isNotEmpty)
            Text(
              title,
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
        ],
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
