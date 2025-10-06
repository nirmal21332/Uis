import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class ItemRow extends StatelessWidget {
  const ItemRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      height: 320,
      margin: EdgeInsets.only(top: 20),
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Container(
              width: 125,
              decoration: BoxDecoration(color: Colors.transparent),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Image.asset(
                            'assets/items/kettle.png',
                            height: 100,
                            fit: BoxFit.contain,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                  shape: CircleBorder(),
                                  backgroundColor: Colors.deepPurple.shade100
                                ),
                                onPressed: () {},
                                label: Text(''),
                                icon: Center(child: Padding(
                                  padding: const EdgeInsets.only(left:9.5),
                                  child: Icon(Ionicons.heart,size: 20,color: Colors.black,),
                                )),
                              ),
                              ListTile(
                                title: Text('4.9',textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.w600),),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Google Pixel\nTablet',
                        style: GoogleFonts.raleway(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          text: '\$15.00 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: '/ hr',
                              style: GoogleFonts.raleway(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
