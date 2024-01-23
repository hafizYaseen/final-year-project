import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';

class PrivacyPolicyScreen extends StatelessWidget {
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
          'Privacy Policy',
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
              '1. Overview',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'This Privacy Policy describes how Xtreme Skills Marketplace collects, uses, and protects your personal information when you use our services. By using our services, you agree to the terms outlined in this policy.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              '2. Information Collection',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'We collect information that you provide when creating an account, such as your name, email address, and skills. We may also collect location data, device information, and other data relevant to the services we provide.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              '3. Use of Information',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'We use the collected information to provide and improve our services, personalize your experience, and communicate with you. We do not sell or share your personal information with third parties without your consent.',
              style: GoogleFonts.montserrat(),
            ),
            // Add more sections as needed
          ],
        ),
      ),
    );
  }
}


