import 'package:flutter/material.dart';
import 'package:ui_practicing/utils/tourist_places_model.dart';

class TouristPlaces extends StatelessWidget {
  const TouristPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Chip(
            elevation:0.4,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            backgroundColor:Colors.white,
            label: Text(placesModel[index].place),
            avatar: CircleAvatar(
              backgroundImage: AssetImage(placesModel[index].image),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(padding: EdgeInsets.only(right: 8));
        },
        itemCount: placesModel.length,
      ),
    );
  }
}
