import 'package:flutter/material.dart';

class ItemAppBar extends StatelessWidget {
  const ItemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:78,
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
              size: 30,
              color: Color(0xff4c53a5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Product',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
                color: Color(0xff4c53a5),
              ),
            ),
          ),
          Spacer(),
          Icon(Icons.favorite, size: 30, color: Colors.red),
        ],
      ),
    );
  }
}
