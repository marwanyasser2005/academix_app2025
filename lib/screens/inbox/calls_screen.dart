import 'package:flutter/material.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: const Scaffold(
        body: Center(child: IndoxCallsVoiceCall()),
      ),
    );
  }
}

class IndoxCallsVoiceCall extends StatelessWidget {
  const IndoxCallsVoiceCall({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF0961F5), Color(0xFFFF001E)],
        ),
      ),
      child: Stack(
        children: [
          // User Profile Image
          Positioned(
            top: screenHeight * 0.3,
            left: (screenWidth - 220) / 2,
            child: const CircleAvatar(
              radius: 110,
              backgroundImage: NetworkImage("https://via.placeholder.com/220"),
            ),
          ),
          // User Name
          Positioned(
            top: screenHeight * 0.55,
            left: screenWidth * 0.15,
            right: screenWidth * 0.15,
            child: const Text(
              'Scott R. Shoemake',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF202244),
                fontSize: 22,
                fontFamily: 'Jost',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          // Call Duration
          Positioned(
            top: screenHeight * 0.6,
            left: screenWidth * 0.25,
            right: screenWidth * 0.25,
            child: const Text(
              '04:50 Minutes',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Bottom Buttons
          Positioned(
            bottom: 50,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _actionButton(
                  iconUrl: "https://via.placeholder.com/20x25",
                  color: const Color(0xFFE8F1FF),
                  borderColor: const Color(0x66B4BDC4),
                ),
                _actionButton(
                  color: const Color(0xFFFF001E),
                  shadow: true,
                ),
                _actionButton(
                  iconUrl: "https://via.placeholder.com/22x22",
                  color: const Color(0xFF0961F5),
                  borderColor: Colors.white,
                  shadow: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _actionButton({
    String? iconUrl,
    required Color color,
    Color? borderColor,
    bool shadow = false,
  }) {
    return Container(
      width: 62,
      height: 62,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: borderColor != null
            ? Border.all(color: borderColor, width: 2)
            : null,
        boxShadow: shadow
            ? [
          const BoxShadow(
            color: Color(0x4C000000),
            blurRadius: 8,
            offset: Offset(1, 2),
          )
        ]
            : null,
      ),
      child: iconUrl != null
          ? Center(
        child: Image.network(
          iconUrl,
          fit: BoxFit.contain,
          width: 25,
          height: 25,
        ),
      )
          : null,
    );
  }
}
