import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/Utils/Coffee_titile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List<String> titleCoffee = ['Latte', 'Cupartino', 'Rezen'];
  List<String> subTitleCoffee = [
    'With Almond Milk',
    'With out Almond',
    'With Yellow Mich',
  ];
  List<String> priceCoffee = ['4.20', '4.25', '2.20'];

  void Selected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.person),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        currentIndex: _selectedIndex,
        onTap: Selected,
        type: BottomNavigationBarType.fixed,
        unselectedIconTheme: IconThemeData(),
        selectedIconTheme: IconThemeData(),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_important),
            label: 'Notif',
          ),
        ],
      ),
      body: Column(
        children: [
          //   Find the best coffee for you
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(fontSize: 56),
            ),
          ),
          SizedBox(height: 25),
          //   Search Bar
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Find your coffee..',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          //   Horizontal listview of coffee tiles
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: titleCoffee.length,
              itemBuilder: (context, index) {
                return CoffeeTile(title: titleCoffee[index], price:priceCoffee[index], subTitle:subTitleCoffee[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
