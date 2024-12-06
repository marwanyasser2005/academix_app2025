import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DarkModeScreen extends StatefulWidget {
  const DarkModeScreen({Key? key}) : super(key: key);

  @override
  _DarkModeScreenState createState() => _DarkModeScreenState();
}

class _DarkModeScreenState extends State<DarkModeScreen> {
  bool _isDarkModeEnabled = false;

  @override
  void initState() {
    super.initState();
    _loadDarkModePreference();
  }

  Future<void> _loadDarkModePreference() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkModeEnabled = prefs.getBool('darkMode') ?? false;
    });
  }

  Future<void> _saveDarkModePreference(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('darkMode', value);
    setState(() {
      _isDarkModeEnabled = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dark Mode'),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enable Dark Mode',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: _isDarkModeEnabled,
              onChanged: (bool value) {
                _saveDarkModePreference(value);
                // Optionally, you can update the theme here
              },
              activeColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
