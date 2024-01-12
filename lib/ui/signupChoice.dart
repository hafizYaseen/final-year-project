import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/buttonLogin.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/ui/splashScreen.dart';

class SignupChoice extends StatelessWidget {
  const SignupChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 7.h
            ),
            Center(
                child: Text(
              'Sign Up!',
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold, fontSize: 16.sp, color: Colors.black),
            )),
            SizedBox(height: 17.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.h),
                  border: Border.all(color: Constants.secondaryColor,width: 0.4.h)
              ),
              height: 24.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.person_sharp,
                    size: 9.h,
                    color: Constants.secondaryColor,
                  ),
                  ButtonLogin(
                      text1: 'As User',
                      textColor: Colors.white,
                      backgroundColor: Constants.secondaryColor,
                      width: 20.h,
                      horizontal: 4.h,
                      vertical: 1.8.h,
                      move: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: SplashScreen(),
                                type: PageTransitionType.fade));
                      })
                ],
              ),
            ),
            SizedBox(height: 2.h,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4.h),
                  border: Border.all(color: Constants.secondaryColor,width: 0.4.h)
              ),
              height: 24.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.groups,
                    size: 9.h,
                    color: Constants.secondaryColor,
                  ),
                  ButtonLogin(
                      text1: 'As Worker',
                      textColor: Colors.white,
                      backgroundColor: Constants.secondaryColor,
                      width: 20.h,
                      horizontal: 4.h,
                      vertical: 1.8.h,
                      move: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: SplashScreen(),
                                type: PageTransitionType.fade));
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
