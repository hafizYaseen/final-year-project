import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/formFieldText.dart';
import '../components/constants.dart';
import '../components/gridItems.dart';
import '../components/horizontalListImages.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> imageUrls = [
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
  ];

  List<String> gridImages = [
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo2.jpg',
  ];

  List<String> gridTitles = [
    'Plumber',
    'Electrician',
    'Carpenter',
    'Plumber',
    'Plumber',
    'Plumber',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
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
            padding: const EdgeInsets.only(right: 10),
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
            SizedBox(height: 10),
            HorizontalImageList(images: imageUrls),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 2.h,
                  mainAxisSpacing: 2.h,
                ),
                itemCount: imageUrls.length,
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


