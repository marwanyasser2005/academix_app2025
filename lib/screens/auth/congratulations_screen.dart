import 'package:academix_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CongratulationsScreen extends StatelessWidget {
  const CongratulationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success Icon
              CircleAvatar(
                radius: 60,
                backgroundColor: const Color(0xFF0961F5),
                child: const Icon(
                  Icons.check_circle,
                  size: 60,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                'Congratulations!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0961F5),
                ),
              ),
              const SizedBox(height: 10),

              // Subtitle
              const Text(
                'Your Academix account is now ready!',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF5A5A5A),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),

              // Action Button
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0961F5),
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Let's start our journey",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
