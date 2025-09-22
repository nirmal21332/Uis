import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({super.key,required this.icon});

  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right:10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {},
        constraints: BoxConstraints.tightFor(width:42),
        icon: Icon(icon, color: Colors.black54),
        splashRadius: 22,
      ),
    );
  }
}
