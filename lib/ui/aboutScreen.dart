import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';

class AboutUsScreen extends StatelessWidget {
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
          'About US',
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
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Constants.secondaryColor, width: 0.2.h)
                ),
                child: CircleAvatar(
                  radius: 10.h,
                  backgroundImage: AssetImage(
                      'assets/images/Xtremeskills logo white back.png'), // Replace with your company logo
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Xtreme Skills Marketplace',
              style: GoogleFonts.montserrat(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'About Us Text: Insert a brief description of your company, its mission, and values here. You can provide information about when the company was founded, its goals, and the services it offers.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Contact Information',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Address: Your Company Address',
              style: GoogleFonts.montserrat(),
            ),
            Text(
              'Phone: Your Contact Number',
              style: GoogleFonts.montserrat(),
            ),
            Text(
              'Email: Your Email Address',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Follow Us',
              style: GoogleFonts.montserrat(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.facebook, color: Constants.primaryColor,),
                  onPressed: () {
                    // Add your Facebook link here
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.twitter, color: Constants.primaryColor,),
                  onPressed: () {
                    // Add your Twitter link here
                  },
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.instagram, color: Constants.primaryColor,),
                  onPressed: () {
                    // Add your Instagram link here
                  },
                ),
                // Add more social media icons as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}
