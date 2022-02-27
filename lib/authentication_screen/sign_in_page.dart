import 'package:find_cribs/authentication_screen/forgot_password.dart';
import 'package:find_cribs/authentication_screen/sign_up_page.dart';
import 'package:find_cribs/components/constants.dart';
import 'package:find_cribs/screens/nav_bar_home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Mobile Width & Height
    double mobileWidth = MediaQuery.of(context).size.width;
    // double mobileHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  "Welcome Back!",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              mobileSizedBoxHeight,
              mobileSizedBoxHeight,
              const Text(
                'Email Address',
                style: TextStyle(
                    color: mobileFormTextColor,
                    fontFamily: 'RedHatDisplayLight',
                    fontSize: 12),
              ),
              mobileSizedBoxHeight2,
              TextFormField(
                // controller: emailController,
                decoration: const InputDecoration(
                    // hintText: 'Enter Email Address',
                    border: OutlineInputBorder(borderSide: BorderSide())),
              ),
              mobileSizedBoxHeight,
              const Text(
                'Password',
                style: TextStyle(
                    color: mobileFormTextColor,
                    fontFamily: 'RedHatDisplayLight',
                    fontSize: 12),
              ),
              mobileSizedBoxHeight2,
              TextFormField(
                // controller: emailController,
                decoration: const InputDecoration(
                    // hintText: 'Enter Email Address',
                    border: OutlineInputBorder(borderSide: BorderSide())),
              ),
              mobileSizedBoxHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(ForgotPasswordScreen());
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: mobileButtonColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              mobileSizedBoxHeight2,
              SizedBox(
                width: mobileWidth * 0.99,
                child: ElevatedButton(
                    // Connect EndPoint
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavBarScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(500, 60),
                        primary: mobileButtonColor),
                    child: const Text(
                      //  Connect EndPoint

                      'Login',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonTextColor,
                          fontSize: 20),
                    )),
              ),
              mobileSizedBoxHeight,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New Here?',
                    style: TextStyle(color: mobileFormTextColor),
                  ),
                  InkWell(
                    onTap: () {
                      Get.off(const EmailScreen());
                      // Connect EndPoint
                      if (kDebugMode) {
                        print('Hello Baby');
                      }
                    },
                    child: const Text(' Sign Up',
                        style: TextStyle(
                            color: mobileButtonColor,
                            fontWeight: FontWeight.bold)),
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
