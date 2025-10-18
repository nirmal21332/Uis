import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      child: Container(
        padding: EdgeInsets.only(top:10.h,left:20.w,right:20.w,bottom:25.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom:0),
                isDense: true,
                label:Text('Enter Destination',style: TextStyle(color: Colors.grey,fontSize:15.sp,fontWeight: FontWeight.bold),),
                prefixIcon: Icon(Icons.search, color: Colors.black,size:20.sp,),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width:1.w),
                ),
              ),
            ),
            SizedBox(height:1.h,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom:0),
                isDense: true,
                label:Text('Mon,Jan 4 - Tue, Jan 6',style: TextStyle(color: Colors.grey,fontSize:15.sp,fontWeight: FontWeight.bold),),
                prefixIcon: Icon(Icons.calendar_month_rounded, color: Colors.black,size:20.sp,),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width:1.w),
                ),
              ),
            ),
            SizedBox(height:1.h,),
            TextFormField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.only(bottom:0.h),
                isDense: true,
                label:Text('1 room - 2 adults - No children',style: TextStyle(color: Colors.grey,fontSize:15.sp,fontWeight: FontWeight.bold),),
                prefixIcon: Icon(Icons.person, color: Colors.black,size:20.sp,),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width:1.w),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
