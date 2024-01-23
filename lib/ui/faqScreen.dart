import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled/components/bottomNavBar.dart';

import '../components/constants.dart';
import '../components/drawer.dart';

class FAQsScreen extends StatelessWidget {
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
          'FAQs',
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
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FAQItem(
              question: 'How do I create an account?',
              answer:
                  'To create an account, click on the "Sign Up" option on the home screen. Provide the required information, including your skills and preferences, and follow the registration process.',
            ),
            FAQItem(
              question: 'Can I edit my profile information?',
              answer:
                  'Yes, you can edit your profile information at any time. Navigate to the "Profile" section in the app, where you can manage details such as profile pictures, contact information, and skill descriptions.',
            ),
            FAQItem(
              question: 'How does the location-based tasking work?',
              answer:
                  'The app uses GPS and API to detect your location. It then matches nearby skilled individuals with relevant tasks in real-time. You will receive notifications when a new task matches your skills and location.',
            ),
            FAQItem(
              question: 'How can I create a new task?',
              answer:
                  'To create a new task, go to the "Tasks" section and click on the "Create Task" option. Provide details such as task description, required skills, location, and duration. Once created, your task will be visible to skilled individuals in the vicinity.',
            ),
            FAQItem(
              question: 'How do I communicate with other users?',
              answer:
                  'The app provides a messaging system for users to communicate with each other. You can discuss task details, negotiate terms, and coordinate schedules with other users through real-time chat or push notifications.',
            ),
            FAQItem(
              question: 'How does the review system work?',
              answer:
                  'Users can rate and provide feedback on skilled individuals based on their experience. Average ratings and reviews are displayed on skilled individuals\' profiles to help other users make informed decisions.',
            ),
            FAQItem(
              question: 'How can I get support?',
              answer:
                  'If you need assistance, you can create a support ticket in the "Help Center" section. Provide details about your inquiry or issue, and our support team will assist you. You can also explore our knowledge base for frequently asked questions.',
            ),
            // Add more FAQ items as needed
          ],
        ),
      ),
    );
  }
}

class FAQItem extends StatelessWidget {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.h),
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
        ],
      ),
    );
  }
}
