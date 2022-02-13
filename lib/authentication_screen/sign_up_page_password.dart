import 'package:find_cribs/authentication_screen/sign_up_page.dart';
import 'package:find_cribs/authentication_screen/sign_up_page_name.dart';
import 'package:find_cribs/components/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  _PasswordScreenState createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
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
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: mobileIconColor),
                child: IconButton(
                  padding: const EdgeInsets.only(left: 9),
                  alignment: Alignment.center,
                  onPressed: () {
                    print('YOYO');
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Set Password",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              mobileSizedBoxHeight,
              const Text(
                'Ensure your password is at least 8 '
                'characters and mixed with letters and numbers.',
                style: TextStyle(color: mobileTextSmallColor, fontSize: 14),
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
              const Text(
                'Retype password',
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
                      Get.to(const NameScreen());
                      if (kDebugMode) {
                        print('Hello baby girl');
                      }
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
                      Get.off(const EmailScreen());
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
