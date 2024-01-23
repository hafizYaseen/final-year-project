import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';
import '../components/drawer.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Constants.secondaryColor,
        title: Text(
          'Notifications',
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.notifications_none,
              size: 7.h,
              color: Constants.secondaryColor,
            ),
            SizedBox(height: 16),
            Text(
              'No Notifications',
              style: GoogleFonts.montserrat(
                fontSize: 2.h,
                fontWeight: FontWeight.bold,
                color: Constants.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}


