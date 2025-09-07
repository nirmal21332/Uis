import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/bubble_stories.dart';
import 'package:ui_practicing/utils/user_post.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  List<dynamic> bubble = [
    'Devang',
    'Rahul',
    'Rajesh',
    'Halu',
    'Kalu',
    'Mahesh',
  ];
List<dynamic> posts=['Michael','Joseph','Rizwan','Rehan','Gorseph'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instagram', style: TextStyle(color: Colors.black)),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bubble.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: BubbleStories(text: bubble[index]),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount:posts.length,
                itemBuilder:(context,index){
              return UserPosts(name: posts[index]);
            }),
          )
        ],
      ),
    );
  }
}
