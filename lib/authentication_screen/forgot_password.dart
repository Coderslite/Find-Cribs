import 'package:find_cribs/authentication_screen/change_password.dart';
import 'package:find_cribs/widgets/back_arrow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';
import 'sign_up_page_password.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    double mobileWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(right: 25, left: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BackArrow(),
              const Padding(
                padding: EdgeInsets.only(top: 150),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      color: mobileTextColor,
                      fontFamily: 'RedHatDisplay',
                      fontSize: 36,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 18),
              const Text(
                'A code has been sent to your registered\nemail address',
                style: TextStyle(
                    color: mobileTextSmallColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 44,
              ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(500, 60),
                      primary: mobileButtonColor),
                  child: const Text(
                    //  Connect EndPoint

                    'Verify Code',
                    style: TextStyle(
                        fontFamily: 'RedHatDisplay',
                        color: mobileButtonTextColor,
                        fontSize: 20),
                  ),
                ),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
