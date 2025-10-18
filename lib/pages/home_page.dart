import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/utils/hotel_list.dart';
import 'package:ui_practicing/utils/search_button.dart';

import '../utils/Info_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 100.h,
        child: BottomNavigationBar(
          selectedLabelStyle: TextStyle(color: Colors.grey),
          unselectedLabelStyle: TextStyle(color: Colors.black),
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: CircleAvatar(
                backgroundColor: Colors.black,
                child: Text(
                  'HIPE',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.black),
              label: 'Book',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates_outlined, color: Colors.black),
              label: 'Tips',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline, color: Colors.black),
              label: 'Book',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined, color: Colors.black),
              label: 'Book',
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        leading: Icon(Icons.tune, color: Colors.black),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Chip(
              backgroundColor: Colors.white,
              avatar: Icon(Icons.sunny, color: Colors.black),
              label: Text(
                '25°',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
        title: Text(
          'HIPE',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                'welcome Dar',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 15.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                'Book Your Next Stay',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),

              SizedBox(height: 10.h),

              InfoCard(),
              SizedBox(height: 20.h),
              SearchButton(),

              SizedBox(height: 8.h),
              Text(
                'Recent Searches',
                style: GoogleFonts.poppins(
                  fontSize: 23.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8.h),
HotelList(),
            ],
          ),
        ),
      ),
    );
  }
}
