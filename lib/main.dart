import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/ui/homeScreen.dart';
import 'package:untitled/ui/loginScreen.dart';
import 'package:untitled/ui/loginSignupScreen.dart';
import 'package:untitled/ui/scrollable.dart';
import 'package:untitled/ui/signupChoice.dart';
import 'package:untitled/ui/signupScreen.dart';
import 'package:untitled/ui/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder:(context,orientation,deviceType){
        return MaterialApp(
          //theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        );
      }
    );
  }
}



