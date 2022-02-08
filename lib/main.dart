import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'screens/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FindCribs',
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        duration: 5000,
        splashIconSize: double.maxFinite,
        splash: 'assets/images/splash_screen.gif',
        nextScreen: OnboardingScreen(),
        backgroundColor: const Color(0xFF0070B9),
        centered: true,
      ),
    );
  }
}
