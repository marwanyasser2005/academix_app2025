import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF0B23C1), // Dark red
              Color(0xFFF30808), // Pink
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Image
              Container(
                width: 171,
                height: 171,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://i.ibb.co/NymbQ4b/DALL-E-2024-11-10-04-11-34-Design-a-logo-for-an-online-learning-app-called-Academix-The-logo-should.png"), // Image link
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(84),
                  ),
                ),
              ),
              SizedBox(height: 40), // Increased spacing for better visual flow

              // App Name
              Text(
                "Academix",
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Inter', // Make sure 'Inter' font is imported in pubspec.yaml
                ),
              ),
              SizedBox(height: 10), // Spacing between the app name and description

              // Description text
              Text(
                "Your AI-powered creative companion",
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  height: 1.5, // Adjusting line height for better readability
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50), // Extra space before the button

              // Arrow button for navigation
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/intro'); // Navigate to the next screen
                },
                child: Icon(
                  Icons.arrow_forward,
                  size: 36,
                  color: Colors.white,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(), backgroundColor: Colors.blue, // Button background color
                  padding: EdgeInsets.all(18), // Button size
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
