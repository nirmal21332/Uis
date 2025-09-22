import 'package:flutter/material.dart';

class CartAppBar extends StatelessWidget {
  const CartAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(25),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Back to previous screen
              },
              child: const Icon(
                Icons.arrow_back,
                size: 30,
                color: Color(0xff4c53a5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                'Cart',
                style: TextStyle(
                  fontSize: 23,
                  color: Color(0xff4c53a5),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Spacer(),
            Icon(Icons.more_vert,size:30,color:Color(0xff4c53a5),)
          ],
        ),
      );
  }
}
