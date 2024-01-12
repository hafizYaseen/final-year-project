import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';

import '../ui/splashScreen.dart';

class ButtonLogin extends StatelessWidget {
  String text1;
  Color textColor, backgroundColor;
  double horizontal, vertical, width, borderRadius;
  VoidCallback move;
  ButtonLogin(
      {required this.text1,
      this.textColor = Colors.black,
      this.backgroundColor = Colors.blue,
      required this.move,
      required this.horizontal,
      required this.vertical,
      required this.width,
      this.borderRadius = 20});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 10,
              shadowColor: Colors.black,
              backgroundColor: backgroundColor,
              padding: EdgeInsets.symmetric(
                  horizontal: horizontal, vertical: vertical),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius))),
          onPressed: move,
          child: Text(
            text1,
            style: GoogleFonts.montserrat(
                color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
          )),
    );
  }
}
