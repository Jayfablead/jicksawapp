import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/main%20Pages/categories%20&%20age.dart';
import 'package:sizer/sizer.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  State<Tutorial> createState() => _TutorialState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgcolor
      // Colors.black
      ,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.offAll(mainpage2());
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: primary,
                        )),
                    SizedBox(
                      width: 22.w,
                    ),
                    Text(
                      'Tutorial',
                      style: primarytxt1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),

                Text(
                  'How to Play?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 1:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player have to Select Their Favourite Category and Age Group.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 2:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'The Questions Will Be Based on Their Selected Age Group and Category.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 3:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Get 1 Question.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 4:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Has to Guess Correct Answer.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 5:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Will Get 4 Options per Question. Where One is Correct and Others are Wrong.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 6:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'If they gave Correct Answer They get Chance to Roll Dice.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 7:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Once a Player Answered a Question They Can\'t Go-back OR Change their Answer.',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                Text(
                  '★ Player Must Have Subscribed a Plan or Purchased any game to play ★',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primary,
                    fontSize: 12.sp,
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(() => CategoriesPage());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(1.5.h),
                    child: Text(
                      'Start',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14.sp),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
