import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:ui_practicing/Ui%201/text_widgets.dart';

import 'icons_buttons.dart';


Widget containerStyle(){
  return Column(
    children: [
      SizedBox(height: 26),
      Text('Welcome Back',style: GoogleFonts.poppins(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
      SizedBox(height: 2),
      Text('Enter your details below',style: GoogleFonts.poppins(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.w500)),
      SizedBox(height: 15,),
      Container(
        height:50,
        width: 340,
        child: TextField(
          decoration:InputDecoration(
            labelText: 'Email Address',
            labelStyle: TextStyle(fontSize: 14),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12),
            )
          ),
        ),
      ),
      SizedBox(height: 15,),
      Container(
        height:50,
        width: 340,
        child: TextField(
          decoration:InputDecoration(
            suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Colors.black38,),
              labelText: 'Password',
              labelStyle: TextStyle(fontSize: 14),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black12),
              )
          ),
        ),
      ),
      SizedBox(height: 20,),
      InkWell(
        onTap:(){},
        child: Container(
          child: Center(child: Text('Sign in',style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.w600),)),
          height:50 ,
          width:300 ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: LinearGradient(
              colors: [Color(0xffdf9bfb),Color(0xff3632d5)],
              begin: Alignment.centerRight,
              end: Alignment.centerLeft
            ),
          ),
        ),
      ),
      SizedBox(height: 15,),
      TextWidgets().Forgot(),
      SizedBox(height: 15,),
      TextWidgets().Sign(),
      SizedBox(height: 10,),
      Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Google login
                },
                icon: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/281/281764.png",
                  height: 30,
                  width: 20,
                ),
                label: Text("Google",style: GoogleFonts.montserrat(fontWeight: FontWeight.w600)),
                style: ElevatedButton.styleFrom(
                  elevation: 0, // 🔥 shadow hata diya
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.grey.shade300),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // 🔥 corners straight
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Facebook login
                  },
                  icon: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/124/124010.png",
                    height: 30,
                    width: 20,
                  ),
                  label: Text("Facebook",style:GoogleFonts.montserrat(fontWeight: FontWeight.w600)),
                  style: ElevatedButton.styleFrom(
                    elevation: 0, // 🔥 shadow hataya
                    backgroundColor: Colors.white,
                    side:BorderSide(color: Colors.grey.shade300),
                    foregroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // 🔥 corners straight
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )
    ],
  );
}