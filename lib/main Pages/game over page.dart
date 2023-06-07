import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:jicksaw/question.dart';
import 'package:sizer/sizer.dart';
class GameOver extends StatefulWidget {
  GameOver({Key? key}) : super(key: key);
  @override
  State<GameOver> createState() => _GameOverState();
}
class _GameOverState extends State<GameOver> {
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
          SizedBox(height: 6.h,),
          Center(
            child: Text("GameOver!",style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),),
          ),
          SizedBox(height: 2.h,),
          Center(
            child: Text("Lost a Turn",style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent
            ),),
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Column(
                children: [
                  Image.asset("assets/sry.png",height: 35.w,width: 90.w,),

                ],
              ),

            ],
          ),
          SizedBox(height: 2.h,),
          Text("You\'ve Losted a Jigsaw Piece",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(height: 1.h,),
          Text("Try again And Earn again.",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12.sp,
                letterSpacing: 1,
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
          ),
          SizedBox(height: 7.h,),

          SizedBox(height: 5.h,),
          GestureDetector(
            onTap: (){
              Get.offAll(Tutorial());
            },
            child:Container(
              alignment: Alignment.center,
              height: 7.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: primary,width: 2.0),
              ),
              child:  Text("Try Again",style: TextStyle(
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
