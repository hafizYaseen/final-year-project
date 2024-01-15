import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/bottomNavBar.dart';
import 'package:untitled/components/drawer.dart';
import 'package:untitled/components/formFieldText.dart';
import '../components/constants.dart';
import '../components/gridItems.dart';
import '../components/horizontalListImages.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> imageUrls = [
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
    'assets/images/Xtremeskills logo.jpg',
  ];

  List<String> gridImages = [
    'assets/images/plumber.png',
    'assets/images/electrician.png',
    'assets/images/carpenter.png',
    'assets/images/barber.png',
  ];

  List<String> gridTitles = [
    'Plumber',
    'Electrician',
    'Carpenter',
    'Plumber',
  ];

  final List<IconData> iconDataList = [

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
          'XtremeSkills',
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
              Icons.notifications_outlined,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 5.w),
            FormFieldText(
              focusedBorderColor: Constants.primaryColor,
              obscureText: false,
              textInputType: TextInputType.text,
              length: 50,
              hintText: 'Search',
              prefixIcon: Icons.search,
            ),
            SizedBox(height: 2.h),
            HorizontalImageList(images: imageUrls),
            SizedBox(height: 2.h),
            Container(
              padding: EdgeInsets.all(4.h),
              height: 42.h, // Set the desired height
              decoration: BoxDecoration(
                color: Constants.primaryColor, // Set the desired background color
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 2.h,
                  mainAxisSpacing: 2.h,
                ),
                itemCount: gridImages.length,
                itemBuilder: (context, index) {
                  return GridItem(imageUrl: gridImages[index], title: gridTitles[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
