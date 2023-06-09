import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/main%20Pages/design.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
class congratulation extends StatefulWidget {
  String? cat;
  String? age;
   congratulation({Key? key,this.age,this.cat}) : super(key: key);
  @override
  State<congratulation> createState() => _congratulationState();
}
class _congratulationState extends State<congratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          GestureDetector(
            onTap: (){

            },
            child: Padding(
              padding:  EdgeInsets.only(left:85.w,top: 3.h),
              child: Container(
                height: 4.h,
                width: 4.h,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: primary,width: 2.0),
                    shape: BoxShape.circle
                ),
                child: Icon(Icons.close,color: primary,size: 14.sp,),
              ),
            ),
          ),
          SizedBox(height: 4.h,),
          Center(
            child: Text("Congratulations!",style: TextStyle(
                fontFamily: "Poppins",
              fontSize: 24.sp,
              fontWeight: FontWeight.bold,
              color: Colors.black
            ),),
          ),
          SizedBox(height: 2.h,),
          Center(
            child: Text("Jigsaw Piece Earned",style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                color: primary,letterSpacing: 1
            ),),
          ),
          SizedBox(height: 8.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Column(
                children: [
                  Image.asset("assets/peice.png",height: 40.w,width: 40.w,),
                ],
              ),

            ],
          ),
          SizedBox(height: 5.h,),
          Text("You\'ve Earned a Jigsaw Piece",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(height: 1.h,),
          Text("Put it in and play for next piece.",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
          ),
          SizedBox(height: 18.h,),

          GestureDetector(
            onTap: (){
              Get.to(design(
                cat: widget.cat,
                age: widget.age,
                cont: 34,
              ));
            },
            child:Container(
              alignment: Alignment.center,
              height: 7.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: primary,width: 2.0),
              ),
              child:  Text("Continue",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp,fontFamily: "Poppins",color: primary
              ),),
            ),
          )
        ],
      ),
    );
  }

}
