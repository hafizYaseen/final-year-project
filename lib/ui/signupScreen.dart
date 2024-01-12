import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/buttonLogin.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/components/formFieldText.dart';
import 'package:untitled/ui/splashScreen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(
          children: [
            SizedBox(
              height: 12.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Sign Up for the Xtremeskills',
                style: GoogleFonts.montserrat(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 7.h,
            ),
            FormFieldText(
                obscureText: false,
                textInputType: TextInputType.text,
                length: 100,
                hintText: 'Enter your first name'),
            SizedBox(
              height: 2.h,
            ),
            FormFieldText(
                obscureText: false,
                textInputType: TextInputType.text,
                length: 100,
                hintText: 'Enter your last name'),
            SizedBox(
              height: 2.h,
            ),
            FormFieldText(
                obscureText: false,
                textInputType: TextInputType.text,
                length: 100,
                hintText: 'Enter Email/Phone number'),
            SizedBox(
              height: 2.h,
            ),
            FormFieldText(
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                length: 20,
                hintText: 'Password'),
            SizedBox(
              height: 2.h,
            ),
            FormFieldText(
                obscureText: true,
                textInputType: TextInputType.visiblePassword,
                length: 20,
                hintText: 'Confirm Password'),
            SizedBox(height: 2.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyCheckBox(),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                        text: "By clicking on 'Sign Up', you are agreeing to the Xtremeskills app",
                        style: GoogleFonts.montserrat(
                          color: Colors.black
                        ),
                        children: [
                          TextSpan(
                              text: ' Terms of Service ',
                            style: GoogleFonts.montserrat(
                              color: Constants.secondaryColor
                            )
                          ),
                          TextSpan(
                            text: ' and '
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                              style: GoogleFonts.montserrat(
                                  color: Constants.secondaryColor
                              )
                          )
                        ]
                    ),

                  ),
                )
              ],
            ),
            SizedBox(height: 4.h,),
            ButtonLogin(
              text1: 'Sign Up',
              move: () {
                Navigator.push(
                    context,
                    PageTransition(
                        child: SplashScreen(), type: PageTransitionType.fade));
              },
              horizontal: 2.h,
              vertical: 1.5.h,
              width: double.infinity,
              backgroundColor: Constants.secondaryColor,
              borderRadius: 1.h,
            )
          ],
        ),
      ),
    );
  }
}

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Constants.secondaryColor,
      side: BorderSide(
        color: Colors.black,
        style: BorderStyle.solid
      ),
        value: isChecked,
        onChanged: (value){
          setState(() {
            isChecked = value!;
          });
        });
  }
}
