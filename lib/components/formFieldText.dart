import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/constants.dart';

class FormFieldText extends StatelessWidget {
  bool obscureText;
  TextInputType textInputType;
  int length;
  IconData? suffixIcon, prefixIcon;
  Color? iconColor, focusedBorderColor;
  String hintText;
  FormFieldText({
    required this.obscureText,
    required this.textInputType,
    required this.length,
    this.suffixIcon,
    this.prefixIcon,
    this.iconColor,
    this.focusedBorderColor,
    required this.hintText,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 6.h,
      child: TextFormField(
        obscureText: obscureText,
        keyboardType: textInputType,
        cursorColor: Colors.black,
        style: GoogleFonts.montserrat(
          fontSize: 12.sp,
          color: Colors.black,
          decoration: TextDecoration.none,
        ),
        inputFormatters: [LengthLimitingTextInputFormatter(length)],
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon, color: iconColor,),
          suffixIcon:Icon(suffixIcon, color: iconColor,),
          hintText: hintText,
            contentPadding: EdgeInsets.only(left: 2.h),
          hintStyle: GoogleFonts.montserrat(
              fontSize: 12.sp,
              color: Colors.black,
            decoration: TextDecoration.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(1.h)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: focusedBorderColor ?? Colors.white,
              ),
              borderRadius: BorderRadius.circular(1.h)
          )
        ),
      ),
    );
  }
}
