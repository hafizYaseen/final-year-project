import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';
import '../components/drawer.dart';

class JobsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Constants.secondaryColor,
        title: Text(
          'Jobs',
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
              Icons.error_outline_outlined,
              size: 7.h,
              color: Constants.secondaryColor,
            ),
            SizedBox(height: 16),
            Text(
              'No Service Found',
              style: GoogleFonts.montserrat(
                  fontSize: 2.h,
                  fontWeight: FontWeight.bold,
                  color: Constants.primaryColor),
            ),
          ],
        ),
      ),
      floatingActionButton: FilterButton(),
    );
  }
}

class FilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 14.h),
      child: Align(
        alignment: Alignment.topRight,
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return FilterOptions();
              },
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Constants.primaryColor, // Customize the background color
            onPrimary: Colors.white,
            minimumSize: Size(15.h, 5.h), // Customize the text color
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.h), // Adjust the border radius
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.filter_list),
              SizedBox(width: 8.0),
              Text(
                'Filter',
                style: GoogleFonts.montserrat(
                  fontSize: 2.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          trailing: Icon(
            Icons.close,
            color: Colors.red,
          ),
          leading: Icon(Icons.filter_list),
          title: Text(
            'Filter',
            style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            // Handle 'All' option
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'All',
            style: GoogleFonts.montserrat(),
          ),
          onTap: () {
            // Handle 'All' option
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Pending',
            style: GoogleFonts.montserrat(),
          ),
          onTap: () {
            // Handle 'Pending' option
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Accepted',
            style: GoogleFonts.montserrat(),
          ),
          onTap: () {
            // Handle 'Accepted' option
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Completed',
            style: GoogleFonts.montserrat(),
          ),
          onTap: () {
            // Handle 'Completed' option
            Navigator.pop(context);
          },
        ),
        ListTile(
          title: Text(
            'Cancelled',
            style: GoogleFonts.montserrat(),
          ),
          onTap: () {
            // Handle 'Cancelled' option
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
