import 'package:flutter/material.dart';
import 'package:ui_practicing/pages/home_page.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Spacer(),
              Image.asset('assets/illustration.png'),
              SizedBox(height: 40),
              Text(
                'Explore your journey\nonly with us',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 17),
              Text(
                'All your vacations destinations are here,\nenjoy your holiday',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 17),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 15.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomePage()));
                  },
                  child: Text('Get Started'),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
