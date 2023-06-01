import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/main%20Pages/porfilePage.dart';
import 'package:sizer/sizer.dart';

import '../Screen/login.dart';

buildErrorDialog(BuildContext context, String title, String contant,
    {VoidCallback? callback, String? buttonname}) {
  Widget okButton = GestureDetector(
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        // color: Color(0xffb4776e6)
      ),
      child: Center(
        child: Text(buttonname ?? 'OK',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffb4776e6),
                decorationColor: Colors.black,
               fontFamily: 'Poppins',)),
      ),
    ),
    onTap: () {
      // if (callback == null) {
      Get.back();
      // } else {

      // }
    },
  );

  if (Platform.isAndroid) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 73.w,
            height: (title == "") ? 15.5.h : 24.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                okButton,
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  if (Platform.isIOS) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 73.w,
            height: (title == "") ? 15.5.h : 20.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                okButton,
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
    // CupertinoAlertDialog cupertinoAlertDialog = CupertinoAlertDialog(
    //   title: Text(title,
    //       style: TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   content: Text(contant,
    //       style: const TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   actions: [
    //     okButton,
    //   ],
    // );
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return cupertinoAlertDialog;
    //   },
    // );
  }
  // show the dialog
}

update(BuildContext context, String title, String contant,
    {VoidCallback? callback, String? buttonname,}) {
  Widget okButton = GestureDetector(
    child: Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        // color: Color(0xffb4776e6)
      ),
      child: Center(
        child: Text(buttonname ?? 'OK',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffb4776e6),
                decorationColor: Colors.black,
               fontFamily: 'Poppins',)),
      ),
    ),
    onTap: () {
      // if (callback == null) {
      Get.offAll(MyProfile());
      // } else {

      // }
    },
  );

  if (Platform.isAndroid) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 73.w,
            height: (title == "") ? 15.5.h : 24.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                okButton,
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  if (Platform.isIOS) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 70.w,
            height: (title == "") ? 15.5.h : 19.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                okButton,
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
    // CupertinoAlertDialog cupertinoAlertDialog = CupertinoAlertDialog(
    //   title: Text(title,
    //       style: TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   content: Text(contant,
    //       style: const TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   actions: [
    //     okButton,
    //   ],
    // );
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return cupertinoAlertDialog;
    //   },
    // );
  }
  // show the dialog
}

gameexit(BuildContext context, String title, String contant,
    {VoidCallback? callback, String? buttonname,VoidCallback? callback1, String? buttonname1}) {
  Widget okButton = GestureDetector(
    child: Container(
      width: MediaQuery.of(context).size.width*0.30,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        // color: Color(0xffb4776e6)
      ),
      child: Center(
        child: Text(buttonname ?? 'OK',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffb4776e6),
                decorationColor: Colors.black,
               fontFamily: 'Poppins',)),
      ),
    ),
    onTap: callback,
  );
  Widget noButton = GestureDetector(
    child: Container(
      width: MediaQuery.of(context).size.width*0.30,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(20.0),
        // color: Color(0xffb4776e6)
      ),
      child: Center(
        child: Text(buttonname ?? 'No',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
                color: Color(0xffb4776e6),
                decorationColor: Colors.black,
               fontFamily: 'Poppins',)),
      ),
    ),
    onTap: (){Get.back();},
  );

  if (Platform.isAndroid) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 73.w,
            height: (title == "") ? 15.5.h : 24.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                okButton,
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  if (Platform.isIOS) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: Colors.transparent,
          child: Container(
            width: 70.w,
            height: (title == "") ? 15.5.h : 21.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                (title != "")
                    ? Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            child: Text(
                              title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  decorationColor: Colors.black,
                                 fontFamily: 'Poppins',),
                            ),
                          ),
                          SizedBox(height: 1.h),
                        ],
                      )
                    : Container(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(height: 1.h),
                      Text(
                        contant,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            decorationColor: Colors.black,
                           fontFamily: 'Poppins',),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 2.h),
                Divider(
                  height: 1.0,
                  color: Colors.grey,
                ),
                SizedBox(height: 2.h),
                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    okButton,Container(height: 3.5.h,width: 0.3.w,color: Colors.black54,),noButton,
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        );
      },
    );
    // CupertinoAlertDialog cupertinoAlertDialog = CupertinoAlertDialog(
    //   title: Text(title,
    //       style: TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   content: Text(contant,
    //       style: const TextStyle(
    //           color: Colors.black,
    //           decorationColor: Colors.black,
    //           fontFamily: 'poppins')),
    //   actions: [
    //     okButton,
    //   ],
    // );
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return cupertinoAlertDialog;
    //   },
    // );
  }
  // show the dialog
}
