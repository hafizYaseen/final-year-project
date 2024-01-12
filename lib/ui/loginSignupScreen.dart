import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/buttonLogin.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/ui/signupScreen.dart';
import 'package:untitled/ui/splashScreen.dart';

class LoginSignupScreen extends StatelessWidget {
  const LoginSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.primaryColor,
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 2.h),
          child: Column(
            children: [
              SizedBox(height: 3.h,),
              Center(child: Image(image: AssetImage('assets/images/logo1.png'),height: 40.h,)),
              SizedBox(height: 35.h,),
              ButtonLogin(text1: 'Login', width: double.infinity, textColor: Colors.white, horizontal: 2.h, vertical: 1.5.h, backgroundColor: Constants.secondaryColor, move: (){Navigator.push(context, PageTransition(child: SplashScreen(), type: PageTransitionType.fade));}),
              SizedBox(height: 5.w,),
              ButtonLogin(text1: 'Signup', width: double.infinity, textColor: Colors.white, horizontal: 2.h, vertical: 1.5.h, backgroundColor: Constants.secondaryColor,move: (){Navigator.push(context, PageTransition(child: SignupScreen(), type: PageTransitionType.fade));}),
            ],
          ),
        ),
      ),
    );
  }
}
