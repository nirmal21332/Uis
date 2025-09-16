import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/util/baners_dart.dart';
import 'package:ui_practicing/util/doctor_list.dart';
import 'package:ui_practicing/util/row_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
          unselectedItemColor: Colors.grey[500],
          selectedItemColor: Color(0xff5a73d8),
          items: [
        BottomNavigationBarItem(icon:Icon(Icons.home,size: 30,),label: ''),
        BottomNavigationBarItem(icon:Icon(Icons.calendar_month_outlined,size: 30),label: ''),
        BottomNavigationBarItem(icon:Icon(Icons.message,size: 30),label: ''),
        BottomNavigationBarItem(icon:Icon(Icons.person,size: 30),label: ''),


      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Upper Section
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // hi jane
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Jane',
                          style: GoogleFonts.poppins(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 0),
                        Text(
                          'How are yo feeling today',
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(50, 50), // 🔹 exact button size
                            padding: EdgeInsets.zero, // 🔹 extra space remove
                            side: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.notifications_none_sharp,
                            color: Colors.black,
                            size: 25, // 🔹 icon छोटा कर दिया
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: Size(50, 50), // 🔹 exact button size
                            padding: EdgeInsets.zero, // 🔹 extra space remove
                            side: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1.5,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {},
                          child: Icon(
                            Icons.search_outlined,
                            color: Colors.black,
                            size: 25, // 🔹 icon छोटा कर दिया
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Baner(),
              SizedBox(height: 20),
              Text(
                'Health Needs',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      RowIcon(docIcons: 'assets/images/appointment.png',),
                      SizedBox(height:15),
                      Text('Appoitment',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize:13),),
                    ],
                  ),
                  Column(
                    children: [
                      RowIcon(docIcons: 'assets/images/hospital.png',),
                      SizedBox(height: 15),
                      Text('Hospital',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize:13),),

                    ],
                  ),
                  Column(
                    children: [
                      RowIcon(docIcons: 'assets/images/coronavirus.png',),
                      SizedBox(height: 15),
                      Text('Covid-19',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize:13)),

                    ],
                  ),
                  Column(
                    children: [
                      RowIcon(docIcons: 'assets/images/more.png',),
                      SizedBox(height: 15),
                      Text('More',style: TextStyle(color: Colors.black.withOpacity(0.6),fontWeight: FontWeight.w500,fontSize:13)),

                    ],
                  ),

                ],
              ),
              SizedBox(height: 25),
              Text(
                'Nearby Doctor',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DoctorList(title: 'dr. Skylar Korsgaard', ratingText: '4.2', reviews: '(121 Reviews)',),
                      DoctorList(title: 'dr. dr.Rieson Schler', ratingText: '5.0', reviews: '(209 Reviews)',),
                      DoctorList(title: 'dr. Adison Schleifer', ratingText: '4.2', reviews: '(122 Reviews)',),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
