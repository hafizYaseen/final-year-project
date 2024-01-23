import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Constants.secondaryColor,
        title: Text(
          'Terms and Conditions',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: Constants.primaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. Introduction',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Welcome to Xtreme Skills Marketplace. These terms and conditions outline the rules and regulations for the use of our services. By accessing our services, you accept and agree to be bound by these terms and conditions.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              '2. User Accounts',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'When you create an account with us, you must provide accurate and complete information. You are responsible for maintaining the confidentiality of your account and password. You agree to notify us immediately of any unauthorized use of your account.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              '3. Services',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Our services allow users to connect with skilled professionals for short-term tasks. We do not guarantee the accuracy or quality of the services provided by individuals on our platform. Users are advised to exercise caution and conduct due diligence before engaging in any transactions.',
              style: GoogleFonts.montserrat(),
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}


