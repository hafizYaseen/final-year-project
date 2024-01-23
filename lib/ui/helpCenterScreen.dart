import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';

import '../components/constants.dart';

class HelpCenterScreen extends StatelessWidget {
  final String supportPhoneNumber = '+923479568681'; // Replace with your support phone number

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
          'Help Center',
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
            Text(
              'Welcome to the Help Center!',
              style: GoogleFonts.montserrat(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'If you have any questions or issues, please explore the frequently asked questions (FAQs) below. If you cannot find the information you need, feel free to contact our support team.',
              style: GoogleFonts.montserrat(),
            ),
            SizedBox(height: 16.0),
            FAQItem(
              question: 'How do I contact support?',
              answer:
              'If you need further assistance, you can contact us directly by pressing the "Contact Support" button below or by calling us at the provided phone number.',
              onContactPressed: () {
                _launchPhoneDialer(supportPhoneNumber);
              },
            ),
            // Add more FAQ items as needed
          ],
        ),
      ),
    );
  }

  void _launchPhoneDialer(String phoneNumber) async {
    String url = 'tel:$phoneNumber';

    // Request phone call permission (if not already granted)
    if (await Permission.phone.request().isGranted) {
      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url));
      } else {
        throw 'Could not launch $url';
      }
    } else {
      // Handle permission denial
      print('Phone call permission denied');
    }
  }
}


class FAQItem extends StatelessWidget {
  final String question;
  final String answer;
  final VoidCallback? onContactPressed;

  FAQItem({required this.question, required this.answer, this.onContactPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: Colors.grey, width: 1.0),
      ),
      child: ExpansionTile(
        title: Text(
          question,
          style: GoogleFonts.montserrat(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(answer, style: GoogleFonts.montserrat()),
          ),
          if (onContactPressed != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: ElevatedButton(
                onPressed: onContactPressed,
                child: Text('Contact Support'),
              ),
            ),
        ],
      ),
    );
  }
}


