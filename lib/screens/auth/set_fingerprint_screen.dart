import 'package:academix_app/screens/auth/congratulations_screen.dart';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class SetFingerprintScreen extends StatefulWidget {
  const SetFingerprintScreen({super.key});

  @override
  _SetFingerprintScreenState createState() => _SetFingerprintScreenState();
}

class _SetFingerprintScreenState extends State<SetFingerprintScreen> {
  final LocalAuthentication _localAuth = LocalAuthentication();

  Future<void> _authenticateWithFingerprint() async {
    try {
      bool isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Please authenticate to proceed.',
        options: const AuthenticationOptions(
          biometricOnly: true,
        ),
      );

      if (isAuthenticated) {
        _navigateToCongratulationsScreen();
      } else {
        _showErrorDialog('Authentication failed. Please try again.');
      }
    } catch (e) {
      _showErrorDialog('An error occurred: $e');
    }
  }

  void _navigateToCongratulationsScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CongratulationsScreen(),
      ),
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Error'),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE57C23),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.fingerprint, size: 100, color: Colors.white),
              const SizedBox(height: 20),
              const Text(
                'Place your finger on the fingerprint scanner to authenticate.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: _authenticateWithFingerprint,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0961F5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 30,
                      ),
                    ),
                    child: const Text(
                      'Authenticate',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 20),
                  TextButton(
                    onPressed: _navigateToCongratulationsScreen,
                    child: const Text(
                      'Skip',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
