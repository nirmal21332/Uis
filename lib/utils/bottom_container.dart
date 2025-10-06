import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/utils/itemRow.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Lease again',
                  style: GoogleFonts.raleway(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'View all',
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff794afe),
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      size: 20,
                      color: Color(0xff794afe),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ItemRow(),
        ],
      ),
    );
  }
}
