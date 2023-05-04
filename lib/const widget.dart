import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/design.dart';
import 'package:sizer/sizer.dart';

const Color bgcolor = Color.fromARGB(255, 18, 28, 36);
const Color primary = Colors.deepOrangeAccent;
Color secondary = Colors.grey.withOpacity(0.2);

AppBar appbar1({required String title1, required VoidCallback press ,required Icon icn , required VoidCallback act ,required Icon icn1 }) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 00,
    actions: [IconButton(onPressed: act, icon: icn1)],
    leading:IconButton(onPressed: press, icon: icn) ,
    centerTitle: true,
    title: Text(title1),
    titleTextStyle: TextStyle(color: primary, fontSize: 14.sp,fontFamily: 'game'),
    iconTheme: IconThemeData(color: primary),
  );
}
TextStyle mainstyle = TextStyle(
  color: Colors.white,
  fontSize: 15.sp,
  fontFamily: 'game',letterSpacing: 2,
);
TextStyle mainstyle1 = TextStyle(
  color: Colors.white,
  fontSize: 13.sp,
  fontFamily: 'game',letterSpacing: 2,
);
TextStyle primarytxt = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontFamily: 'game',letterSpacing: 2,
);TextStyle header = TextStyle(
    color: Colors.white,
    fontSize: 15.sp,
    fontFamily: 'game',letterSpacing: 2,
);TextStyle mail = TextStyle(
    color: primary,
    fontSize: 13.sp,
    fontFamily: 'game',letterSpacing: 2,
);
TextStyle primarytxtbig = TextStyle(
    color: Colors.white,
    fontSize: 15.sp,
    fontFamily: 'game',letterSpacing: 2,
);

TextStyle primarytxt1 = TextStyle(
    color:primary,
    fontSize: 13.sp,
    fontFamily: 'game',letterSpacing: 2,
);

TextStyle playertxt1 = TextStyle(
    color:Colors.pink,
    fontSize: 13.sp,
    fontFamily: 'game',letterSpacing: 2,
);

TextStyle secondarytxt = TextStyle(
    color: primary,
    fontSize: 11.sp,
    fontFamily: 'game',letterSpacing: 2,
);
TextStyle secondarytxt2 = TextStyle(
  color: primary,
  fontSize: 13.sp,
  fontFamily: 'game',letterSpacing: 2,
);
TextStyle secondarytxtwhite = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontFamily: 'game',letterSpacing: 2,
);TextStyle secondarytxtwhite1 = TextStyle(
    color: Colors.white,
    fontSize: 11.5.sp,
    fontFamily: 'game',letterSpacing: 1,
);
TextStyle textbtn = TextStyle(
  color: primary,
  fontSize: 14.sp,
  fontFamily: 'game',letterSpacing: 2,
);
void back(context) {
  showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Text(
            'You Can\'t Go Back From This State',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            CupertinoButton(
                child: Text(
                  'Ok',
                ),
                onPressed: () {
                  Get.back();
                }),
          ],
        );
      });
}


void home(context) {
  showDialog(
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          content: Text(
            'Are You Sure You Want to Go to the Homepage',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            CupertinoButton(
                child: Text(
                  'Yes',
                ),
                onPressed: () {
                  Get.to(mainpage2());
                }),
            CupertinoButton(
                child: Text(
                  'No',
                ),
                onPressed: () {
                  Get.back();
                }),
          ],
        );
      });
}
void exit(context) {

    showDialog(
        context: context,
        builder: (context) {
          return Theme(
              data: ThemeData(
              dialogBackgroundColor: bgcolor,
              dialogTheme: DialogTheme(backgroundColor: bgcolor)),child:CupertinoAlertDialog(
            content: Text(
              'You Want to Quit Application ?',
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              CupertinoButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Color(0xffff0000)),
                  ),
                  onPressed: () {
                    exit(0);
                  }),
              CupertinoButton(
                  child: Text('No'),
                  onPressed: () {
                   Get.back();
                  }),
            ],
          ));
        });
}

