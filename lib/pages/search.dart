import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/Explore_grid.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: Container(
      color: Colors.grey[200],
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search,color: Colors.grey[400],),
          ),
          Container(
            padding: EdgeInsets.all(12),
            child: Text('Search',style: TextStyle(color: Colors.grey[400]),),
          ),
        ],
      ),
    ),
  ),
),
      body:ExploreGrid() ,
    );
  }
}
