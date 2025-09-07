import 'package:flutter/material.dart';

class ShopGrid extends StatelessWidget {
  const ShopGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.only(right: 4.0,bottom:4.0),
          child: Container(
            color: Colors.pinkAccent[100],
          ),
        );
      },
    );
  }
}
