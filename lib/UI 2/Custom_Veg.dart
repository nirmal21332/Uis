import 'package:flutter/material.dart';
import 'package:ui_practicing/UI%202/Top_bar.dart';
import 'package:ui_practicing/UI%202/veg_lists.dart';

class CustomVeg extends StatelessWidget {
  const CustomVeg({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(   // 👈 Important when inside Column
      child: GridView.builder(
        padding: const EdgeInsets.only(top: 12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          childAspectRatio: 0.76, // 👈 card ka proportion set karne ke liye
        ),
        itemCount: vegList.length,
        itemBuilder: (context, index) {
          return VegDesign(
            title: vegList[index].title,
            image: vegList[index].image,
            price: vegList[index].price,
          );
        },
      ),
    );
  }
}
