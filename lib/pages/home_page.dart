import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui_practicing/utils/custom_icon%20widgetss.dart';
import 'package:ui_practicing/utils/location_card.dart';
import 'package:ui_practicing/utils/nearby_places.dart';
import 'package:ui_practicing/utils/recommendation_places.dart';
import 'package:ui_practicing/utils/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Good Morning'),
            Text(
              'Tetteh Jeron Asiedu',
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ],
        ),
        actions: [
          CustomIconButton(icon: Ionicons.search_outline),
          CustomIconButton(icon: Ionicons.notifications_outline),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline),
            label: 'Bookmark',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.ticket_outline),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          // Location Card
          LocationCard(),
          SizedBox(height: 15),

          // Categories
          TouristPlaces(),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommendation',
                style: GoogleFonts.mulish(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(onPressed: () {}, child: Text('View All')),
            ],
          ),

          SizedBox(height: 10),
          // Recommendation places
          RecommendationPlaces(),
          SizedBox(height: 10),

          // Nearby Places
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Nearby From You',
                style: GoogleFonts.mulish(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              TextButton(onPressed: () {}, child: Text('View All')),
            ],
          ),

          SizedBox(height: 10),

          NearbyPlaces()

        ],
      ),
    );
  }
}
