import 'package:flutter/material.dart';

class CartBottomNavBar extends StatelessWidget {
  const CartBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total:',
                  style: TextStyle(
                    color: Color(0xff4c53a5),
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$165',
                  style: TextStyle(
                    color: Color(0xff4c53a5),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff4c53a5),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                'Check Out',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
