import 'package:find_cribs/authentication_screen/sign_in_page.dart';
import 'package:find_cribs/authentication_screen/sign_in_verify_email_page.dart';
import 'package:find_cribs/components/constants.dart';
import 'package:find_cribs/widgets/back_arrow.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    // Mobile Width & Height
    double mobileWidth = MediaQuery.of(context).size.width;
    double mobileHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackArrow(),
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Your Name",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              mobileSizedBoxHeight,
              const Text(
                'Let us know who we are dealing with',
                style: TextStyle(color: mobileTextSmallColor, fontSize: 14),
              ),
              mobileSizedBoxHeight,
              const Text(
                'First Name',
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
                'Last Name',
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'By tapping Register, I accept',
                    style: TextStyle(
                      color: mobileTextSmallColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (kDebugMode) {
                        print('Regulations');
                      }
                    },
                    child: const Text(
                      ' FindCribs Term of Use',
                      style: TextStyle(color: mobileButtonColor),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyEmailScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(500, 60),
                        primary: mobileButtonColor),
                    child: const Text(
                      //  Connect EndPoint

                      'Register',
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
                    'Have an Account?',
                    style: TextStyle(color: mobileFormTextColor),
                  ),
                  InkWell(
                    onTap: () {
                      // Connect EndPoint
                      Get.off(const LoginScreen());
                      if (kDebugMode) {
                        print('Hello Baby');
                      }
                    },
                    child: const Text(' Login',
                        style: TextStyle(
                            color: mobileButtonColor,
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
              mobileBigHeight,
              const Center(
                child: Text(
                  'Not ready to register?',
                  style: TextStyle(
                      fontFamily: 'RedHatDisplay', color: mobileTextSmallColor),
                ),
              ),
              const SizedBox(height: 5),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Connect EndPoint
                    if (kDebugMode) {
                      print(
                        'Move to Next Screen',
                      );
                    }
                  },
                  child: const Text('Skip',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonColor,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
