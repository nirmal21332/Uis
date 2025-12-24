import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_practicing/view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => ScreenUtilInit(
    designSize: const Size(360, 640), // example base size
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xfff2f2f2),
        useMaterial3: false,
        textTheme: GoogleFonts.nunitoTextTheme(
          Theme.of(context).textTheme,
        ), // optional
      ),
      home: HomeScreen(),
    ),
  );
}
