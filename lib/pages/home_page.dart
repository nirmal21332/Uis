import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_practicing/utils/burger_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        height: 220.h,
        color: Colors.transparent,
        elevation: 0,
        padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 15.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Payment Method',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 19.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Change',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: 100.w,
              height: 10.h,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Order Amount',
                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                ),
                Text(
                  '\$120.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tax',
                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                ),
                Text(
                  '\$5',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Discount',
                  style: TextStyle(color: Colors.grey, fontSize: 18.sp),
                ),
                Text(
                  '\$0',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            DottedLine(
              direction: Axis.horizontal,
              dashLength: 4.w,
              dashGapLength: 4.w,
              lineThickness: 2.h,
              dashColor: Colors.grey.shade400,
              dashGapColor: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Payment',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
                Text(
                  '\$125.00',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
             Center(
               child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width*0.9,40),
                    backgroundColor: Colors.orange,
                    shape: StadiumBorder(),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Process to Payment',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize:20.sp),
                  ),
                ),
             ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
        child: ListView(
          children: [
            BurgerList(image: 'assets/b1.webp', title: 'Chicken Burger'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: DottedLine(
                direction: Axis.horizontal,
                dashLength: 4.w,
                dashGapLength: 4.w,
                lineThickness: 2.h,
                dashColor: Colors.grey.shade400,
                dashGapColor: Colors.transparent,
              ),
            ),
            BurgerList(image: 'assets/b2.jpg', title: 'Humber Cheese\nBurger'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: DottedLine(
                direction: Axis.horizontal,
                dashLength: 4.w,
                dashGapLength: 4.w,
                lineThickness: 2.h,
                dashColor: Colors.grey.shade400,
                dashGapColor: Colors.transparent,
              ),
            ),
            BurgerList(image: 'assets/b3.jpeg', title: 'Italian Pizza'),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.h),
              child: DottedLine(
                direction: Axis.horizontal,
                dashLength: 4.w,
                dashGapLength: 4.w,
                lineThickness: 2.h,
                dashColor: Colors.grey.shade400,
                dashGapColor: Colors.transparent,
              ),
            ),
            BurgerList(image: 'assets/b1.webp', title: 'Chinese Pizza'),
          ],
        ),
      ),
    );
  }
}
