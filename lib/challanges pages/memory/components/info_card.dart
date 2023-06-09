import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:sizer/sizer.dart';

Widget info_card(String title, String info) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 9.w),
     width: 15.w,
padding: EdgeInsets.symmetric(vertical: 0.5.h),
      decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 22.0,
              fontWeight: FontWeight.bold,
              color:
              bgcolor

                ,
            fontFamily: 'Poppins',letterSpacing: 2
            ),
          ),
          // SizedBox(
          //   height: 0.5.h,
          // ),
          Text(
            info,
            style: TextStyle(fontSize: 34.0,color: bgcolor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
