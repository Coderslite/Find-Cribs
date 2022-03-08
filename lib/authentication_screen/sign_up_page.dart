import 'package:find_cribs/agent_profile/profile.dart';
import 'package:find_cribs/authentication_screen/sign_in_page.dart';
import 'package:find_cribs/authentication_screen/sign_up_page_password.dart';
import 'package:find_cribs/components/colors.dart';
import 'package:find_cribs/favourite_screen/favourite_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  _EmailScreenState createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
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
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              mobileSizedBoxHeight,
              const Text(
                'Register or sign in to FindCribs to customise your searches and see your account details.',
                style: TextStyle(color: mobileTextSmallColor, fontSize: 14),
              ),
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
              SizedBox(
                width: mobileWidth * 0.99,
                child: ElevatedButton(
                  // Connect EndPoint
                  onPressed: () {
                    // Get X Navigation
                    Get.to(const PasswordScreen(),
                        transition: Transition.fadeIn);
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(500, 60),
                      primary: mobileButtonColor),
                  child: const Text(
                    //  Connect EndPoint

                    'Continue',
                    style: TextStyle(
                        fontFamily: 'RedHatDisplay',
                        color: mobileButtonTextColor,
                        fontSize: 20),
                  ),
                ),
              ),
              mobileSizedBoxHeight,
              Row(children: [
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: const Divider(
                        thickness: 0.2,
                        color: mobileTextSmallColor,
                        // height: 5,
                      )),
                ),
                const Text(
                  "Or",
                  style: TextStyle(
                      fontFamily: 'RedHatDisplayLight',
                      color: mobileTextSmallColor),
                ),
                Expanded(
                  child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: const Divider(
                        thickness: 0.2,
                        color: mobileTextSmallColor,
                        // height: 5,
                      )),
                ),
              ]),
              mobileSizedBoxHeight,
              OutlinedButton(
                onPressed: () {},
                child: SizedBox(
                  height: mobileHeight * .08,
                  width: mobileWidth * 99,
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/icons/goog_le.png',
                          height: 23,
                          width: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                                color: mobileTextColor,
                                fontFamily: 'RedHatDisplayLight',
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                ),
              ),
              mobileSizedBoxHeight2,
              OutlinedButton(
                onPressed: () {},
                child: SizedBox(
                  height: mobileHeight * .08,
                  width: mobileWidth * 99,
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'lib/assets/icons/fb.png',
                          height: 25,
                          width: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Continue with Google',
                            style: TextStyle(
                                color: mobileTextColor,
                                fontFamily: 'RedHatDisplayLight',
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ]),
                ),
              ),
              mobileTopHeight,
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
              mobileTopHeight,
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
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProfileScreen()));
                  },
                  child: const Text('Skip',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonColor)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
