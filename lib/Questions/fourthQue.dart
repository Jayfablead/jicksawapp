import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/fifthQue.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class FourthQue extends StatefulWidget {
  int firstans;
  int secans;
  int thirdans;
   FourthQue({Key? key,required this.firstans,required this.secans,required this.thirdans}) : super(key: key);

  @override
  State<FourthQue> createState() => _FourthQueState();
}

bool ans1 = false;
bool ans2 = false;
bool ans3 = false;
bool ans4 = false;

class _FourthQueState extends State<FourthQue> {
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
        act: () {
          setState(() {
            ans1 = false;
            ans2 = false;
            ans3 = false;
            ans4 = false;
          });
        },
        icn1: Icon(CupertinoIcons.restart),
        title1: 'Question',
        press: () {},
        icn: Icon(null),
      ),
      body: WillPopScope(
        onWillPop: dialog,
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '4). ',
                          style: secondarytxt,
                        ),
                        SizedBox(
                          width: 1.w,
                        ),
                        Container(
                          height: 1.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: secondary),
                          child: Row(
                            children: [
                              Container(
                                height: 1.h,
                                width: 55.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: primary),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      'What widget would you use for repeating content in Flutter?',
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
                              print(
                                  'Answer 1 :  ${ans1},${ans2},${ans3},${ans4} ');
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: ans1
                                ? BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                                : BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.deepOrange.withOpacity(0.5),
                                offset: Offset(0, 6),
                                // blurRadius: 20,
                                // spreadRadius: -5,
                              ),
                            ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.deepOrangeAccent),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'Expanded View',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans1
                                      ? primary
                                      : Color.fromARGB(255, 18, 28, 36),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'game',
                                letterSpacing: 2,),
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
                              print(
                                  'Answer 2 :  ${ans1},${ans2},${ans3},${ans4} ');
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: ans2
                                ? BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                                : BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.deepOrange.withOpacity(0.5),
                                offset: Offset(0, 6),
                                // blurRadius: 20,
                                // spreadRadius: -5,
                              ),
                            ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.deepOrangeAccent),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'List View',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans2
                                      ? primary
                                      : Color.fromARGB(255, 18, 28, 36),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'game',
                                letterSpacing: 2,),
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
                              print(
                                  'Answer 3 :  ${ans1},${ans2},${ans3},${ans4} ');
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: ans3
                                ? BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                                : BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.deepOrange.withOpacity(0.5),
                                offset: Offset(0, 6),
                                // blurRadius: 20,
                                // spreadRadius: -5,
                              ),
                            ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.deepOrangeAccent),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'Stack',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans3
                                      ? primary
                                      : Color.fromARGB(255, 18, 28, 36),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'game',
                                letterSpacing: 2,),
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
                              print(
                                  'Answer 4 :  ${ans1},${ans2},${ans3},${ans4} ');
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: ans4
                                ? BoxDecoration(
                                border: Border.all(color: primary),
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                                : BoxDecoration(boxShadow: [
                              BoxShadow(
                                color: Colors.deepOrange.withOpacity(0.5),
                                offset: Offset(0, 6),
                                // blurRadius: 20,
                                // spreadRadius: -5,
                              ),
                            ],
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.deepOrangeAccent),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'Array Builder',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans4
                                      ? primary
                                      : Color.fromARGB(255, 18, 28, 36),
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'game',
                                letterSpacing: 2,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    (ans1 || ans2 || ans3 || ans4)
                        ? InkWell(
                      onTap: () {Get.to(()=>FifthQue(firstans: widget.firstans,secans: widget.secans,thirdans: widget.thirdans,fourthans: ans2?20:0,));},
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            color: Colors.deepOrange.withOpacity(0.5),
                            offset: Offset(0, 6),
                            // blurRadius: 20,
                            // spreadRadius: -5,
                          ),
                        ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.deepOrangeAccent),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'Next',
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: Color.fromARGB(255, 18, 28, 36),
                              fontWeight: FontWeight.bold,
                              fontFamily: 'game',
                            letterSpacing: 2,),
                        ),
                      ),
                    )
                        : Container(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> dialog() async {
    back(context);
    return await false;
  }
}
