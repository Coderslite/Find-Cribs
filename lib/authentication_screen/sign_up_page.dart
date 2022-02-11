import 'package:find_cribs/components/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
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
              SizedBox(
                height: mobileHeight * .08,
                width: mobileWidth * 99,
                child: OutlinedButton.icon(
                  label: const Text(
                    'Continue with Google',
                    style: TextStyle(
                        color: mobileTextColor,
                        fontFamily: 'RedHatDisplayLight',
                        fontWeight: FontWeight.w500),
                  ),
                  icon: const ImageIcon(AssetImage('icons/goog_le.png')),
                  // style:
                  //     ElevatedButton.styleFrom(primary: mobileBackgroundColor),
                  onPressed: () {
                    // Connect EndPoint

                    if (kDebugMode) {
                      print('Pressed');
                    }
                  },
                ),
              ),
              mobileSizedBoxHeight2,
              SizedBox(
                height: mobileHeight * .08,
                width: mobileWidth * 99,
                child: OutlinedButton.icon(
                  label: const Text(
                    'Continue with Facebook',
                    style: TextStyle(
                        color: mobileTextColor,
                        fontFamily: 'RedHatDisplayLight',
                        fontWeight: FontWeight.w500),
                  ),
                  icon: const ImageIcon(AssetImage('icons/fb.png')),
                  // style:
                  //     ElevatedButton.styleFrom(primary: mobileBackgroundColor),
                  onPressed: () {
                    // Connect EndPoint
                    if (kDebugMode) {
                      print('Pressed');
                    }
                  },
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
