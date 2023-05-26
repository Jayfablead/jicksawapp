import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/resultsPage.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class FifthQue extends StatefulWidget {
  int firstans;
  int secans;
  int thirdans;
  int fourthans;

  FifthQue(
      {Key? key,
      required this.firstans,
      required this.secans,
      required this.thirdans,
      required this.fourthans})
      : super(key: key);

  @override
  State<FifthQue> createState() => _FifthQueState();
}

bool ans1 = false;
bool ans2 = false;
bool ans3 = false;
bool ans4 = false;

class _FifthQueState extends State<FifthQue> {
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
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  children: [
                    SizedBox(
                      height: 1.5.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '5). ',
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
                                width: 75.w,
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
                      'Which function is responsible for starting the program?',
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
                                    borderRadius: BorderRadius.circular(90),
                                    color: secondary)
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'runApp()',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans1
                                      ? primary
                                      : Colors.white,

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
                                    borderRadius: BorderRadius.circular(90),
                                    color: secondary)
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'run()',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans2
                                      ? primary
                                      : Colors.white,

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
                                    borderRadius: BorderRadius.circular(90),
                                    color: secondary)
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'MaterialApp()',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans3
                                      ? primary
                                      : Colors.white,

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
                                    borderRadius: BorderRadius.circular(90),
                                    color: secondary)
                                : BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'Main()',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans4
                                      ? primary
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                fontFamily: 'Poppins',
                               ),
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
                            onTap: () {
                              Get.to(()=>
                                ResultsPage(
                                    firstans: widget.firstans,
                                    secans: widget.secans,
                                    thirdans: widget.thirdans,
                                    fourthans: widget.fourthans,
                                    fifthans: ans4 ? 20 : 0),
                              );
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
                                    fontSize: 13.sp,
                                    color: Colors.white,

                                  fontFamily: 'Poppins',
                                ),
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
