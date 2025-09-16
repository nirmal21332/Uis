import 'package:flutter/material.dart';

class Baner extends StatelessWidget {
  const Baner({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 8,
      child: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width * 0.85,
        decoration: BoxDecoration(color: Color(0xff5a73d8),
        borderRadius: BorderRadius.circular(12)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff7f95e2),
                borderRadius: BorderRadius.circular(8),
              ),
              height: 40,
              width: 40,
              child: Image.asset('assets/images/doctor1.png', fit: BoxFit.cover),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'dr.Ruben Dorwart',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 7),
                Text(
                  'Dental Specialist',
                  style: TextStyle(
                    color: Colors.grey[300],
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.only(top: 7,bottom: 7,left: 9,right: 9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xff5068c2)
                  ),
                  child:Row(
                    children: [
                      Icon(Icons.calendar_today_outlined,color: Colors.white,size: 16,),
                      SizedBox(width: 4),
                      Text('Today',style: TextStyle(color: Colors.white,fontSize:14,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Icon(Icons.watch_later_outlined,color: Colors.white,size: 16,),
                      SizedBox(width: 4),
                      Text('14:30 - 15:30 AM',style:TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
