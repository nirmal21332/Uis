import 'package:flutter/material.dart';

class RowIcon extends StatelessWidget {

  String docIcons;

  RowIcon({super.key,required this.docIcons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: Image.asset(docIcons,height: 35,width: 35,fit:BoxFit.cover,),
    );
  }
}
