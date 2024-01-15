import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/ui/splashScreen.dart';

import 'constants.dart';

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  GridItem({required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, PageTransition(child: SplashScreen(), type: PageTransitionType.fade));
      },
      child: Container(
        //padding: EdgeInsets.only(top: 2.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3.h),
          color: Constants.tertiaryColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: GoogleFonts.montserrat(
                    fontSize: 12.sp, fontWeight: FontWeight.bold, color: Constants.secondaryColor
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}