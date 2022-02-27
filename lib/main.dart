import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:find_cribs/screens/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// <<<<<<< gabriel
import 'package:get/get.dart';

// import 'authentication_screen/sign_up_page.dart';
// =======
// import 'package:flutter/services.dart';
// import 'screens/onboarding.dart';
// >>>>>>> main

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
// <<<<<<< gabriel
//     return const GetMaterialApp(
//         debugShowCheckedModeBanner: false, home: EmailScreen());
// =======
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        //color set to transperent
      ),
    );
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FindCribs',
      theme: ThemeData(),
      home: AnimatedSplashScreen(
        duration: 3350,
        splashIconSize: double.maxFinite,
        splash: 'assets/images/splash_screen.gif',
        nextScreen: const OnboardingScreen(),
        backgroundColor: const Color(0xFF0070B9),
        centered: true,
      ),
    );
// >>>>>>> main
  }
}
