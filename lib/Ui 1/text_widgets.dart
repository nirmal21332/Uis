import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class TextWidgets {
  Widget Sign(){
    return Text('──────────   Or sign in with   ──────────',style:GoogleFonts.montserrat(color: Colors.grey.withOpacity(0.5),fontWeight: FontWeight.w500),);
  }
  Widget Forgot(){
    return Text('Forgot your password?',style: GoogleFonts.montserrat(fontSize: 15,fontWeight:FontWeight.bold,color: Colors.black87.withOpacity(0.4)),);
  }
  Widget jobsly() {
    return Text(
      'Jobsly',
      style: GoogleFonts.raleway(
        color: Colors.white,
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  Widget Dont(){
    return Text(
      "Don't have an account?",style: GoogleFonts.raleway(color:Color(0xff8b8de8),fontSize: 15,fontWeight: FontWeight.w600),
    );
  }
}
