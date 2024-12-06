import 'package:flutter/material.dart';

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Help Center',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildSection('Frequently Asked Questions', Icons.help_outline, [
                'How do I reset my password?',
                'How do I update my profile information?',
                'How do I enroll in a course?',
                'How do I contact support?',
              ]),
              const SizedBox(height: 20),
              _buildSection('Contact Us', Icons.contact_mail, [
                'Email: support@academix.com',
                'Phone: +1 (123) 456-7890',
                'Address: 123 Academix Street, City, Country',
              ]),
              const SizedBox(height: 20),
              _buildSection('Additional Resources', Icons.library_books, [
                'User Guide',
                'Tutorial Videos',
                'Community Forum',
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSection(String title, IconData icon, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 10),
        for (String item in items)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              item,
              style: const TextStyle(fontSize: 16),
            ),
          ),
      ],
    );
  }
}
