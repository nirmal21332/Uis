import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui_practicing/utils/bottom_container.dart';
import 'package:ui_practicing/utils/icon_row.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:FloatingActionButton(onPressed: (){},
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        backgroundColor: Color(0xff754bf8),
      child: Icon(Icons.add),
      ),
      backgroundColor: Color(0xff151617),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        selectedItemColor: Color(0xff754bf8),
        iconSize: 25,
        items: [
          BottomNavigationBarItem(icon: Icon(IconlyLight.category), label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.heart), label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(IconlyLight.profile), label: ''),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(IconlyLight.search, size: 30),
        ),
        centerTitle: true,
        title: ActionChip(
          padding: EdgeInsets.only(top: 15, bottom: 15, left: 20, right: 20),
          onPressed: () {},
          shape: StadiumBorder(),
          backgroundColor: Colors.grey.shade900,
          label: Text(
            'New Jersey',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
          avatar: Icon(Ionicons.location, size: 20),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Badge(
              backgroundColor: Theme.of(context).primaryColor,
              alignment: Alignment(1, -1.5),
              smallSize: 8,
              child: Icon(Ionicons.notifications_outline, size: 30),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: AutoSizeText(
              'Find the best to rent',
              maxLines: 1,
              minFontSize: 10,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.raleway(
                color: Colors.white.withOpacity(0.9),
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          IconRow(),
          BottomContainer(),
        ],
      ),
    );
  }
}
