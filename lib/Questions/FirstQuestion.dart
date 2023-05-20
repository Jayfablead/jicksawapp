import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/SeconQue.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class FirstQue extends StatefulWidget {
  const FirstQue({Key? key}) : super(key: key);

  @override
  State<FirstQue> createState() => _FirstQueState();
}

bool ans1 = false;
bool ans2 = false;
bool ans3 = false;
bool ans4 = false;

class _FirstQueState extends State<FirstQue> {
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
      // Colors.black
      ,
      appBar: appbar1(
        title1: 'Question',
        press: () {
          Get.back();
        },
        icn: Icon(Icons.arrow_back_ios_new_rounded),
        act: () {
          setState(() {
            ans1 = false;
            ans2 = false;
            ans3 = false;
            ans4 = false;
          });
        },
        icn1: Icon(CupertinoIcons.restart),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            child: Column(
              children: [
                SizedBox(
                  height: 1.5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1). ',
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
                            width: 10.w,
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
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                            : BoxDecoration(
                                boxShadow: [
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
                          'Open Source Backend Framework',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans1
                                ? primary
                                : Color.fromARGB(255, 18, 28, 36),
                            fontFamily: 'game',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
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
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                            : BoxDecoration(
                                boxShadow: [
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
                          'Open Source UI Tool-Kit',
                          style: TextStyle(
                              fontSize: 13.sp,
                              color: ans2
                                  ? primary
                                  : Color.fromARGB(255, 18, 28, 36),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 2,
                              fontFamily: 'game'),
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
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                            : BoxDecoration(
                                boxShadow: [
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
                          'Open Source App Development',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans3
                                ? primary
                                : Color.fromARGB(255, 18, 28, 36),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'game',
                            letterSpacing: 2,
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
                                borderRadius: BorderRadius.circular(15),
                                color: secondary)
                            : BoxDecoration(
                                boxShadow: [
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
                          'DBMS Tool-Kit',
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: ans4
                                ? primary
                                : Color.fromARGB(255, 18, 28, 36),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'game',
                            letterSpacing: 2,
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
                            SecQue(firstans: ans3 ? 20 : 0),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: 85.w,
                          margin: EdgeInsets.only(top: 2.h),
                          decoration: BoxDecoration(
                              boxShadow: [
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
                              letterSpacing: 2,
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
    );
  }
}
