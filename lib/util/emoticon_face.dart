import 'package:flutter/material.dart';

class EmoticonFace extends StatelessWidget {

  String emoticonFace;
  EmoticonFace({super.key,required this.emoticonFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue[600],
      ),
      child:Text(emoticonFace,style:TextStyle(fontSize: 28),),
    );
  }
}
