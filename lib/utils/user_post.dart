import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  String name;
  UserPosts({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(name),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),
        Container(
          color: Colors.grey,
          height: 400,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal:12),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold),),
              Text(' and '),
              Text('others',style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0,top: 8),
          child: Row(
            children: [
              Text('You Mind....')
            ],
          ),
        )
      ],
    );
  }
}
