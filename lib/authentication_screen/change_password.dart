import 'package:flutter/material.dart';
import '../components/colors.dart';
import '../widgets/back_arrow.dart';
import 'password_changed.dart';
import 'sign_in_verify_email_page.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double mobileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackArrow(),
              const Padding(
                padding: EdgeInsets.only(top: 110),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              mobileSizedBoxHeight,
              const Text(
                'New Password',
                style: TextStyle(
                    color: mobileFormTextColor,
                    fontFamily: 'RedHatDisplayLight',
                    fontSize: 14),
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
                'Retype New Password',
                style: TextStyle(
                    color: mobileFormTextColor,
                    fontFamily: 'RedHatDisplayLight',
                    fontSize: 14),
              ),
              mobileSizedBoxHeight2,
              TextFormField(
                // controller: emailController,
                decoration: const InputDecoration(
                    // hintText: 'Enter Email Address',
                    border: OutlineInputBorder(borderSide: BorderSide())),
              ),
              mobileSizedBoxHeight,
              mobileSizedBoxHeight2,
              SizedBox(
                width: mobileWidth * 0.99,
                child: ElevatedButton(
                    // Connect EndPoint
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const PasswordChangedScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(500, 60),
                        primary: mobileButtonColor),
                    child: const Text(
                      //  Connect EndPoint

                      'Reset Password',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonTextColor,
                          fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
