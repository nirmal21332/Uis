import 'package:flutter/material.dart';
import 'package:ui_practicing/UI%202/Custom_Veg.dart';
import 'package:ui_practicing/UI%202/Top_bar.dart';

class VegHomeScreen extends StatefulWidget {
  const VegHomeScreen({super.key});

  @override
  State<VegHomeScreen> createState() => _VegHomeScreenState();
}

class _VegHomeScreenState extends State<VegHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            TopBar(),
            TopSearch(),
            CustomVeg()
          ],
        ),
      ),
    );
  }
}
