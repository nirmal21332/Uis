import 'package:flutter/material.dart';

class DoctorList extends StatelessWidget {

  String ratingText,title,reviews;

  DoctorList({super.key,required this.title,required this.ratingText,required this.reviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            padding: EdgeInsets.only(top: 20,right: 20,bottom: 20),
            child: Image.asset(
              'assets/images/doctor2.png',
              height: 40,
              width: 40,
            ),
          ),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 7),
              Text('General Practitioner', style: TextStyle(fontSize: 11)),
              SizedBox(height: 20),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.orangeAccent, size: 15),
                  SizedBox(width: 4),
                  Text(
                    ratingText,
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 3),
                  Text(
                    reviews,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
