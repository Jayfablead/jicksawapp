import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const Color bgcolor = Color.fromARGB(255, 18, 28, 36);
const Color primary = Colors.deepOrange;
Color secondary = Colors.grey.withOpacity(0.2);

AppBar appbar1({required String title1, required VoidCallback press ,required Icon icn }) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 00,
    leading:IconButton(onPressed: press, icon: icn) ,
    centerTitle: true,
    title: Text(title1),
    titleTextStyle: TextStyle(color: primary, fontSize: 14.sp),
    iconTheme: IconThemeData(color: primary),
  );
}
TextStyle mainstyle = TextStyle(
  color: Colors.white,
  fontSize: 15.sp,
  fontFamily: 'Meta1'
);
TextStyle primarytxt = TextStyle(
    color: Colors.white,
    fontSize: 13.sp,
    fontFamily: 'Meta1'
);

TextStyle secondarytxt = TextStyle(
    color: primary,
    fontSize: 11.sp,
    fontFamily: 'Meta1'
);
