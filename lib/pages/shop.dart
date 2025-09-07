import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/shop_grid.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shop',style: TextStyle(fontWeight: FontWeight.bold),),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.calendar_today),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.menu),
                )
              ],
            )
          ],
        ),
      ),  
      body: Column(
        children: [
          Container(
            color: Colors.transparent,
            height:MediaQuery.of(context).size.height*0.08,
            width: MediaQuery.of(context).size.width*1,
            child: Center(
              child: Container(
                height: 50,
                width: 380,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Search',

                    labelStyle: TextStyle(color: Colors.grey[500]),
                    prefixIcon: Icon(Icons.search,color: Colors.grey[500],),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8),
                    ),

                  ),
                ),
              ),
            ),
          ),
          Expanded(child: ShopGrid())
        ],
      ),

    );
  }
}
