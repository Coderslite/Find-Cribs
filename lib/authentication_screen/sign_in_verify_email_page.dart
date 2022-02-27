import 'package:find_cribs/authentication_screen/verified.dart';
import 'package:find_cribs/components/constants.dart';
import 'package:find_cribs/widgets/back_arrow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  _VerifyEmailScreenState createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
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
                padding: EdgeInsets.only(top: 200),
                child: Text(
                  "Verify Account",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              mobileSizedBoxHeight,
              const Text(
                'A code has been sent to your registered email address',
                style: TextStyle(color: mobileTextSmallColor, fontSize: 14),
              ),
              // mobileSizedBoxHeight,
              // mobileSizedBoxHeight,

              mobileSizedBoxHeight,
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
                      // Get.off(const Verified Successfully)
                      Navigator.pushReplacement(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) => const VerifiedScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(500, 60),
                        primary: mobileButtonColor),
                    child: const Text(
                      //  Connect EndPoint

                      'Verify Account',
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
                    'Didn’t get code?',
                    style: TextStyle(
                        color: mobileColorForText,
                        fontSize: 16,
                        fontFamily: 'RedHatDisplayLight'),
                  ),
                  InkWell(
                    onTap: () {
                      // Connect EndPoint
                     
                    },
                    child: const Text(' Resend',
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
