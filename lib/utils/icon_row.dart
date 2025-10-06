import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconRow extends StatelessWidget {
  IconRow({super.key});

  var images = ['assets/cycle.png', 'assets/watch.webp', 'assets/tool.webp'];
  var color = [Color(0xffb4f9b9), Color(0xffd09ff9), Color(0xfffd93ac)];
  var iconTitle = ['Sports', 'Electronics', 'Tools'];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color[index],
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.only(left: 20),
            width: 120,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(images[index], height: 70, fit: BoxFit.contain),
                AutoSizeText(
                  iconTitle[index],
                  maxLines: 1,
                  minFontSize: 10,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontSize:16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
