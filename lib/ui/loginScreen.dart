import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/buttonLogin.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/components/formFieldText.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: Column(
          children: [
            Center(
                child: Image(
              image: AssetImage(
                'assets/images/logo1.png',
              ),
              height: 18.h,
            )),
            FormFieldText(
              obscureText: false,
              textInputType: TextInputType.text,
              length: 30,
              hintText: 'Enter Username',
            ),
            FormFieldText(
              obscureText: true,
              textInputType: TextInputType.visiblePassword,
              length: 30,
              hintText: 'Enter Password',
              suffixIcon: Icons.remove_red_eye,
            ),
            ButtonLogin(
                text1: 'Login',
                move: () {},
                horizontal: 2.h,
                vertical: 2.h,
                width: double.infinity)
          ],
        ),
      ),
    );
  }
}
