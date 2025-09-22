import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/categories_widget.dart';
import 'package:ui_practicing/utils/items_widget.dart';

import '../utils/Home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
          onTap:(index){},
          color: Color(0xff4c53a5),
          items: [
            Icon(Icons.home,color: Colors.white,size:30),
            Icon(CupertinoIcons.cart_fill,color: Colors.white,size:30),
            Icon(Icons.list,color: Colors.white,size:30),

          ]),
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
            padding: EdgeInsets.only(top: 15),
            // height:   MediaQuery.of(context).size.height*1,
            decoration: BoxDecoration(
              color: Color(0xffedecf2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                topLeft: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search here...',
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        color: Color(0xff4c53a5),
                        size: 27,
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5),
                    ),
                  ),
                ),

                // Categories
                CategoriesWidget(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    'Best Selling',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff4c53a5),
                      fontSize: 25,
                    ),
                  ),
                ),

                // Items widget
                ItemsWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
