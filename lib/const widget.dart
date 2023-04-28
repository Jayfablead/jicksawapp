import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

const Color bgcolor = Color.fromARGB(255, 18, 28, 36);
const Color primary = Colors.deepOrange;
Color secondary = Colors.grey.withOpacity(0.2);

AppBar appbar1({required String title1, required VoidCallback press ,required Icon icn , required VoidCallback act ,required Icon icn1 }) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 00,
    actions: [IconButton(onPressed: act, icon: icn1)],
    leading:IconButton(onPressed: press, icon: icn) ,
    centerTitle: true,
    title: Text(title1),
    titleTextStyle: TextStyle(color: primary, fontSize: 14.sp,fontFamily: 'Meta1'),
    iconTheme: IconThemeData(color: primary),
  );
}
TextStyle mainstyle = TextStyle(
  color: Colors.white,
  fontSize: 15.sp,
  fontFamily: 'Meta1'
);
TextStyle mainstyle1 = TextStyle(
  color: Colors.white,
  fontSize: 13.sp,
  fontFamily: 'Meta1'
);
TextStyle primarytxt = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontFamily: 'Meta1'
);

TextStyle primarytxt1 = TextStyle(
    color:primary,
    fontSize: 13.sp,
    fontFamily: 'Meta1'
);

TextStyle secondarytxt = TextStyle(
    color: primary,
    fontSize: 11.sp,
    fontFamily: 'Meta1'
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

