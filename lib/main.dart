import 'package:academix_app/screens/profile/profile_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';
import 'package:academix_app/screens/auth/auth_service.dart';

// Onboarding Screens
import 'screens/onboarding/splash_screen.dart';
import 'screens/onboarding/intro_screen.dart';
import 'screens/onboarding/intro_screen2.dart';
import 'screens/onboarding/intro_screen3.dart';
import 'screens/onboarding/let_you_in_screen.dart';

// Auth Screens
import 'screens/auth/login_screen.dart';
import 'screens/auth/signup_screen.dart';
import 'screens/auth/forgot_password_screen.dart';
import 'screens/auth/verify_forgot_password_screen.dart';
import 'screens/auth/create_pin_screen.dart';
import 'screens/auth/set_fingerprint_screen.dart';
import 'screens/auth/new_password_screen.dart';
import 'screens/auth/fill_profile_screen.dart';
import 'screens/auth/congratulations_screen.dart';

// Main Screens
import 'screens/home/home_screen.dart';
import 'screens/courses/courses_screen.dart';
import 'screens/courses/course_details_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Initialize Firebase

  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isDarkMode = prefs.getBool('darkMode') ?? false;

  runApp(AcademixApp(isDarkMode: isDarkMode));
}

class AcademixApp extends StatelessWidget {
  final bool isDarkMode;

  const AcademixApp({Key? key, required this.isDarkMode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(create: (_) => AuthService()),
        StreamProvider(
          create: (context) => context.read<AuthService>().authStateChanges,
          initialData: null,
        ),
      ],
      child: MaterialApp(
        title: 'Academix',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          brightness: isDarkMode ? Brightness.dark : Brightness.light,
          fontFamily: 'Inter',
          visualDensity: VisualDensity.adaptivePlatformDensity,
          scaffoldBackgroundColor: isDarkMode ? Colors.black : Colors.white,
          textTheme: TextTheme(
            bodyLarge: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
            bodyMedium: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
          ),


          appBarTheme: AppBarTheme(
            color: isDarkMode ? Colors.black : Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: isDarkMode ? Colors.white : Colors.black),
          ),

        ),
        home: SplashScreen(),
        routes: {
          '/onboarding': (context) => SplashScreen(),
          '/intro': (context) => IntroScreen(),
          '/intro2': (context) => IntroScreen2(),
          '/intro3': (context) => IntroScreen3(),
          '/let_you_in': (context) => LetYouInScreen(),
          'login': (context) => const LoginScreen(),
          'register': (context) => const SignupScreen(),
          '/congratulations': (context) => CongratulationsScreen(),
          '/forgot-password': (context) => const ForgotPasswordScreen(),
          '/home': (context) => const HomeScreen(),
          '/course-screen': (context) => const CoursesScreen(),
          '/fill-profile': (context) => const FillYourProfile(),
          '/profile': (context) => Profiles(),
          // Add more routes here...
        },
        onUnknownRoute: (settings) {
          return MaterialPageRoute(
            builder: (context) => Scaffold(
              appBar: AppBar(title: const Text('Error')),
              body: const Center(
                child: Icon(
                  Icons.error_outline,
                  size: 100,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();

    if (firebaseUser != null) {
      return const HomeScreen();
    }
    return SplashScreen();
  }
}
