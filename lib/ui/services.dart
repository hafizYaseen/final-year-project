import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../components/constants.dart';
import '../components/drawer.dart';
import '../components/gridItems.dart';
import '../components/horizontalListImages.dart';

class Services extends StatelessWidget {
  Services({super.key});

  final List<String> imageUrls = [
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
  ];
  final List<String> gridImages = [
    'assets/images/plumber.png',
    'assets/images/electrician.png',
    'assets/images/carpenter.png',
    'assets/images/barber.png',
    'assets/images/plumber.png',
    'assets/images/electrician.png',
    'assets/images/carpenter.png',
    'assets/images/barber.png',
    'assets/images/barber.png',
  ];
  final List<String> gridTitles = [
    'Plumber',
    'Electrician',
    'Carpenter',
    'Plumber',
    'Plumber',
    'Electrician',
    'Carpenter',
    'Plumber',
    'Plumber',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: CustomDrawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Constants.secondaryColor,
        title: Text(
          'Services',
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.3.h),
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            HorizontalImageList(images: imageUrls),
            SizedBox(height: 2.h,),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Number of columns in the grid
                  crossAxisSpacing: 2.h,
                  mainAxisSpacing: 2.h,
                ),
                itemCount: gridImages.length,
                itemBuilder: (context, index) {
                  return GridItem(imageUrl: gridImages[index], title: gridTitles[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
