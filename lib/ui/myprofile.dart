import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/buttonLogin.dart';

import '../components/constants.dart';
import '../components/drawer.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Constants.secondaryColor,
        title: Text(
          'My Profile',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
            color: Constants.primaryColor,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 1.7.h),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(2.0.h),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Constants.tertiaryColor,
                  radius: 8.0.h,
                  child: Icon(
                    Icons.person_sharp,
                    size: 12.h,
                  ),
                ),
              ),
              SizedBox(height: 2.0.h),
              Text(
                'Yaseen Ejaz',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.sp,
                ),
              ),
              SizedBox(height: 1.0.h),
              Text(
                'yaseen.ejaz@example.com',
                style: GoogleFonts.montserrat(
                  fontSize: 12.sp,
                ),
              ),
              SizedBox(height: 2.0.h),
              ButtonLogin(
                text1: "Edit Profile",
                move: () {},
                horizontal: 1.h,
                vertical: 2.h,
                width: double.infinity,
                backgroundColor: Constants.secondaryColor,
                textColor: Constants.primaryColor,
              ),
              SizedBox(height: 2.0.h),
              buildClickableListItem(Icons.person, 'My Profile', () {
                // Handle My Profile item click
              }),
              buildClickableListItem(Icons.location_on, 'Address', () {
                // Handle Address item click
              }),
              buildClickableListItem(Icons.work, 'My Job Requests', () {
                // Handle My Job Requests item click
              }),
              buildClickableListItem(Icons.settings, 'Settings', () {
                // Handle Settings item click
              }),
              buildClickableListItem(Icons.logout, 'Logout', () {
                // Handle Logout item click
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildClickableListItem(IconData prefixIcon, String text, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.3.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(2.h),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 2.h),
            decoration: BoxDecoration(
              border: Border.all(color: Constants.secondaryColor),
              
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(prefixIcon, color: Constants.primaryColor),
                    SizedBox(width: 2.0.h),
                    Text(
                      text,
                      style: GoogleFonts.montserrat(
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_forward_ios, color: Constants.primaryColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
