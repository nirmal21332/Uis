import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/Ui%201/text_widgets.dart';

import 'container_decoration.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
        color:Color(0xff3632d5),

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            upperStyle(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            TextWidgets().jobsly(),
            SizedBox(height: MediaQuery.of(context).size.height * 0.09),
            containerBg(context),
          ],
        ),
      ),
    );
  }

  Row upperStyle() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
              TextWidgets().Dont(),
              ElevatedButton(style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff8f8cff).withOpacity(0.5),
                elevation: 1,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9)
                )
              ),onPressed: (){}, child:Text('Get Started'))
            ],
          );
  }

  Stack containerBg(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
          width: MediaQuery.of(context).size.width * 0.92,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xff8282e2),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.63,
          width: MediaQuery.of(context).size.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: Colors.white,
          ),
          child:containerStyle(),
        ),
      ],
    );
  }
}
