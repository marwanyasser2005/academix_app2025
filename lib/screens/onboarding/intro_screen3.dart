import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class IntroScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE60D0D), // Dark red
              Color(0xFF40C6FF), // Blue
            ],
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.ibb.co/9n7XwXc/3991845-removebg-preview.png', // Updated image link
                    height: 250, // Adjust the height as needed
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Interactive Learning",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Engage with interactive sessions and live classes.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 3; i++)
                        Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: i == 2 ? Colors.white : Colors.grey,
                          ),
                        ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/let_you_in');
                    },
                    child: Icon(
                      Icons.arrow_forward,
                      size: 36,
                      color: Colors.white,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(24), // Button background color
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 40,
              right: 20,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/let_you_in');
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
