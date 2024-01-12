import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/components/constants.dart';



class ScrollableScreen extends StatelessWidget {
  final List<String> itemList = [
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    'assets/images/logo.jpg',
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Horizontally Scrollable Containers', style: GoogleFonts.nunito(
            fontWeight: FontWeight.bold
          ),),
        ),
        body: HorizontalListViewBuilder(itemList: itemList),
      );

  }
}

class HorizontalListViewBuilder extends StatelessWidget {
  final List<String> itemList;

  HorizontalListViewBuilder({required this.itemList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
      height: 200, // Adjust the height as needed
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150, // Adjust the width as needed
            margin: EdgeInsets.all(8),
            color: Constants.primaryColor,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CircleAvatar(
                  radius: 40,
                  child: Image(image: AssetImage(itemList[index]),

                  ),
                ),
              ),
            ),
          );
        },
      ),
    ),

    );
  }
}
