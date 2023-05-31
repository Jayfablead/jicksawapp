// TriviaChallenge
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';



class TriviaChallenge extends StatefulWidget {
  const TriviaChallenge({Key? key}) : super(key: key);

  @override
  State<TriviaChallenge> createState() => _TriviaChallengeState();
}

bool ans1 = false;
bool ans2 = false;
bool ans3 = false;
bool ans4 = false;

class _TriviaChallengeState extends State<TriviaChallenge> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      ans1 = false;
      ans2 = false;
      ans3 = false;
      ans4 = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: appbar1(
        title1: 'TriviaChallenge',
        press: () {
          Get.back();
        },
        icn: Icon(Icons.arrow_back_ios_new_rounded),
        act: () {},
        icn1: Icon(null),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            child: Column(
              children: [

                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'What is Flutter?',
                  style: primarytxt,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          ans1 = true;
                          ans2 = false;
                          ans3 = false;
                          ans4 = false;
                          print('Answer 1 :  ${ans1},${ans2},${ans3},${ans4} ');
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: ans1
                            ? BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(90),
                            color: secondary)
                            : BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: primary),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'Open Source Backend Framework',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans1 ? primary : Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ans1 = false;
                          ans2 = true;
                          ans3 = false;
                          ans4 = false;
                          print('Answer 2 :  ${ans1},${ans2},${ans3},${ans4} ');
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: ans2
                            ? BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(90),
                            color: secondary)
                            : BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: primary),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'Open Source UI Tool-Kit',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans2 ? primary : Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ans1 = false;
                          ans2 = false;
                          ans3 = true;
                          ans4 = false;
                          print('Answer 3 :  ${ans1},${ans2},${ans3},${ans4} ');
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: ans3
                            ? BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(90),
                            color: secondary)
                            : BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: primary),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'Open Source App Development',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans3 ? primary : Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          ans1 = false;
                          ans2 = false;
                          ans3 = false;
                          ans4 = true;
                          print('Answer 4 :  ${ans1},${ans2},${ans3},${ans4} ');
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: ans4
                            ? BoxDecoration(
                            border: Border.all(color: primary),
                            borderRadius: BorderRadius.circular(90),
                            color: secondary)
                            : BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: primary),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'DBMS Tool-Kit',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans4 ? primary : Colors.white,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                (ans1 || ans2 || ans3 || ans4)
                    ? InkWell(
                  onTap: () {

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(2.h),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14.sp),
                    ),
                  ),
                )
                    : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



