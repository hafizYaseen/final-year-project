import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import 'package:untitled/ui/homeScreen.dart';
import 'package:untitled/ui/jobsScreen.dart';
import 'package:untitled/ui/loginScreen.dart';
import 'package:untitled/ui/myprofile.dart';
import 'package:untitled/ui/notificationsScreen.dart';
import 'package:untitled/ui/services.dart';
import 'package:untitled/ui/signupChoice.dart';
import 'package:untitled/ui/signupScreen.dart';

import 'constants.dart';


class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarBottomState();
}

class _NavigationBarBottomState extends State<NavigationBarBottom> {
  int index = 0;
  final items = <Widget>[
    Icon(CupertinoIcons.home) ,
    Icon(FontAwesomeIcons.briefcase) ,
    Icon(Icons.cleaning_services) ,
    Icon(FontAwesomeIcons.bell),
    Icon(FontAwesomeIcons.user),
  ];

  final screens = [
    HomeScreen(),
    JobsScreen(),
    Services(),
    NotificationsScreen(),
    MyProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return screens[index];
        },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            iconTheme: IconThemeData(color: Constants.primaryColor)
        ),
        child: CurvedNavigationBar(
            color: Constants.secondaryColor,
            index: index,
            items: items,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            animationCurve: Curves.fastLinearToSlowEaseIn,
          onTap: (newindex){
              setState(() {
                this.index = newindex;
              });
          },
            ),
      ),
    );
  }
}
