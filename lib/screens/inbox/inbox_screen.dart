import 'package:academix_app/screens/inbox/chat_screen.dart';
import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inbox'),
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
            subtitle: Text('Last message preview here...'),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('12:45'),
                const SizedBox(height: 5),
                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.green,
                  child: const Text('3', style: TextStyle(fontSize: 10, color: Colors.white)),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChatScreen()),
              );
            },
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
