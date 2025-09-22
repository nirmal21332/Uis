import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:ui_practicing/utils/RecommendedPlacesModel.dart';

class RecommendationPlaces extends StatelessWidget {
  const RecommendationPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return SizedBox(
            width: 220,
            child: InkWell(
              onTap:(){},
              child: Card(
                elevation: 0.4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                          height: 150,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            recommendedPlaces[index].location,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade700,
                            size: 14,
                          ),
                          Text(recommendedPlaces[index].rating.toString(), style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Ionicons.location,
                            size: 16,
                            color: Theme.of(context).primaryColor,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'French Polynesia',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Padding(padding: EdgeInsets.only(right: 10));
        },
        itemCount:recommendedPlaces.length,
      ),
    );
  }
}
