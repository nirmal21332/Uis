import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/Explore_grid.dart';
import 'package:ui_practicing/utils/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                '237',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text('Posts'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '3930',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Followers'),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '40',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Text('Following'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 220, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('koko', style: TextStyle(fontWeight: FontWeight.bold)),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 2.0),
                      child: Text('I create apps & games'),
                    ),
                    Text('m.youtube.com', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 10, right: 5),
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Edit Profile')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:EdgeInsets.only(left:5,right: 5),
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Ad Tools')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin:EdgeInsets.only(left: 5,right:10),
                        padding: EdgeInsets.all(8),
                        child: Center(child: Text('Insights')),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BubbleStories(text: 'story 1'),
                      BubbleStories(text: 'story 2'),
                      BubbleStories(text: 'story 3'),
                      BubbleStories(text: 'story 4'),
                      BubbleStories(text: 'story 5'),
                  
                    ],
                  ),
                ),
              ),
              TabBar(tabs: [
                Tab(icon: Icon(Icons.grid_3x3_outlined),),
                Tab(icon: Icon(Icons.video_call),),
                Tab(icon: Icon(Icons.shop),),
                Tab(icon: Icon(Icons.person),)
              ]),
              Expanded(child: ExploreGrid())
            ],
          ),
        ),
      ),
    );
  }
}
