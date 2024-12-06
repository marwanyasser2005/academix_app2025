import 'package:flutter/material.dart';

class CallsListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calls'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          tabs: [
            Tab(text: "Chat"),
            Tab(text: "Calls"),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: 10, // Example count
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: const Icon(Icons.person, color: Colors.white),
            ),
            title: Text('User $index'),
            subtitle: Text('Missed call at 3:45 PM'),
            trailing: const Icon(Icons.call, color: Colors.green),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
