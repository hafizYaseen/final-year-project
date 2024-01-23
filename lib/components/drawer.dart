import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/constants.dart';
import 'package:untitled/ui/aboutScreen.dart';
import 'package:untitled/ui/contactUsScreen.dart';
import 'package:untitled/ui/faqScreen.dart';
import 'package:untitled/ui/helpCenterScreen.dart';
import 'package:untitled/ui/privacyPolicyScreen.dart';
import 'package:untitled/ui/terms&ConditionsScreen.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container( // Wrap Drawer with Container
      height: MediaQuery.of(context).size.height * 0.85, // Set the desired height (adjust as needed)
      child: Drawer(
        backgroundColor: Constants.secondaryColor,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              padding: EdgeInsets.all(0.0.h),
              decoration: BoxDecoration(
                color: Constants.tertiaryColor,
              ),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Constants.secondaryColor, width: 0.2.h),
                  ),
                  child: CircleAvatar(
                    radius: 10.h,
                    backgroundImage: AssetImage(
                        'assets/images/Xtremeskills logo white back.png'), // Replace with your company logo
                  ),
                ),
              ),
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
                    Navigator.push(context, PageTransition(child: AboutUsScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('FAQs', Icons.question_answer, () {
                    // Navigate to the FAQs screen or execute the desired action
                    Navigator.push(context, PageTransition(child: FAQsScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('Terms and Conditions', Icons.library_books, () {
                    // Navigate to the Terms and Conditions screen or execute the desired action
                    Navigator.push(context, PageTransition(child: TermsAndConditionsScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('Privacy Policy', Icons.privacy_tip, () {
                    // Navigate to the Privacy Policy screen or execute the desired action
                    Navigator.push(context, PageTransition(child: PrivacyPolicyScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('Contact Us', Icons.contact_mail, () {
                    // Navigate to the Contact Us screen or execute the desired action
                    Navigator.push(context, PageTransition(child: ContactUsScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('Help Center', Icons.help, () {
                    // Navigate to the Help Center screen or execute the desired action
                    Navigator.push(context, PageTransition(child: HelpCenterScreen(), type: PageTransitionType.fade));
                  }),
                  _buildListTile('Share', Icons.share, () {
                    // Execute the action for sharing
                    Navigator.pop(context);
                  }),
                ],
              ),
            ),
            Divider(),
            _buildListTile('Signout', Icons.exit_to_app, () {
              // Execute the signout logic
              Navigator.pop(context);
            }),
          ],
        ),
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
