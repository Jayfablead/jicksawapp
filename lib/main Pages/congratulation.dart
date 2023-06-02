import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:jicksaw/question.dart';
import 'package:sizer/sizer.dart';
class congratulation extends StatefulWidget {
   congratulation({Key? key}) : super(key: key);
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
          SizedBox(height: 6.h,),
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
            child: Text("Level 2 unlocked",style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent
            ),),
          ),
          SizedBox(height: 10.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
               children: [
                 Image.asset("assets/1.jpg",height: 20.w,width: 20.w,),
                 SizedBox(height: 1.h,),
                 Text("Beginner Level",
                     style: TextStyle(
                     fontFamily: "Poppins",
                     fontSize: 8.sp,
                     fontWeight: FontWeight.normal,
                     color: Colors.grey.shade900
                 ),
                 )
               ],
              ),
              Column(
                children: [
                  Image.asset("assets/level2.png",height: 40.w,width: 40.w,),
                ],
              ),
              Column(
                children: [
                  Image.asset("assets/level3.png",height: 20.w,width: 20.w,),
                  SizedBox(height: 1.h,),
                  Text("Beginner Level",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 8.sp,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey.shade900
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 2.h,),
          Text("Elementry Level",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.black
            ),
          ),
          SizedBox(height: 1.h,),
          Text("Express yourself in simple sentences.",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 12.sp,
                fontWeight: FontWeight.normal,
                color: Colors.black
            ),
          ),
          SizedBox(height: 7.h,),
          Container(
            height: 5.h,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 1.h,bottom: 1.h,right: 1.w,left: 3.w),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  colors: [
                  primary1,
                    primary2,
                  primary
                  ],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  // stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Level 1",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,fontFamily: "Poppins"
                ),),
                Container(
                  height: 4.h,
                  width: 4.h,
                  decoration: BoxDecoration(
                  color: Colors.white,
                    shape: BoxShape.circle
                ),
                  child: Icon(Icons.star,color: primary,size: 14.sp,),
                )
              ],
            ),
          ),
          SizedBox(height: 3.h,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Exp.250",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,fontFamily: "Poppins"
              ),),
              Text("/250",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 12.sp,fontFamily: "Poppins",color: Colors.grey
              ),),
            ],
          ),
          SizedBox(height: 5.h,),
          GestureDetector(
            onTap: (){
              Get.offAll(question());
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
