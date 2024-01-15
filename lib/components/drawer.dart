import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/constants.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Constants.secondaryColor,
      child: Column(
        children: <Widget>[
          DrawerHeader(
            padding: EdgeInsets.all(0.0.h),
            decoration: BoxDecoration(
             // color: Colors.blue,
            ),
            child: Container(
              width: double.infinity,
              child: Image.asset('assets/images/Xtremeskills logo Splash.png',
              fit: BoxFit.fitWidth,
              ),
            )
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                _buildListTile('Home', Icons.home, () {
                  // Navigate to the Home screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('About Us', Icons.info, () {
                  // Navigate to the About Us screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('FAQs', Icons.question_answer, () {
                  // Navigate to the FAQs screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('Terms and Conditions', Icons.library_books, () {
                  // Navigate to the Terms and Conditions screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('Privacy Policy', Icons.privacy_tip, () {
                  // Navigate to the Privacy Policy screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('Contact Us', Icons.contact_mail, () {
                  // Navigate to the Contact Us screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('Help Center', Icons.help, () {
                  // Navigate to the Help Center screen or execute the desired action
                  Navigator.pop(context);
                }),
                _buildListTile('Share', Icons.share, () {
                  // Execute the action for sharing
                  Navigator.pop(context);
                }),
              ],
            ),
          ),
          Divider(
            // indent: 6.25.h,
            // endIndent: 6.25.h,
          ),
          _buildListTile('Signout', Icons.exit_to_app, () {
            // Execute the signout logic
            Navigator.pop(context);
          }),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, color: Constants.primaryColor, size: 20.sp,),
      title: Text(title, style: GoogleFonts.montserrat(color: Colors.white, fontSize: 12.sp),),
      onTap: onTap,
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: Constants.primaryColor,),
    );
  }
}
