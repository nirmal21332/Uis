import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart' hide Badge;
import 'package:badges/badges.dart';
import 'package:ui_practicing/pages/cart_page.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort, color: Color(0xff4c53a5)),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'DP Shop',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            badgeStyle: badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: Text('3', style: TextStyle(color: Colors.white)),
            child: InkWell(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>CartPage()));
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 30,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
