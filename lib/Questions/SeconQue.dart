import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/thirdPage.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class SecQue extends StatefulWidget {
  int firstans;
   SecQue({Key? key,required this.firstans}) : super(key: key);

  @override
  State<SecQue> createState() => _SecQueState();
}

bool ans1 = false;
bool ans2 = false;
bool ans3 = false;
bool ans4 = false;

class _SecQueState extends State<SecQue> {
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
      backgroundColor:
      bgcolor

      ,
      appBar: appbar1(
        act: () {

        },
        icn1: Icon(null),
        title1: '',
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
                          '2). ',
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
                                width: 25.w,
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
                      'What is the key configuration file used when building a Flutter project?',
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
                              'pubspec.yaml',
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
                              'pubspec.xml',
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
                              'config.html',
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
                              'root.xml',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: ans4
                                      ? primary
                                      : Colors.white,

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
                            onTap: () {Get.to(()=>ThirdQue( firstans: widget.firstans,secans: ans1?20:0,),);},
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
