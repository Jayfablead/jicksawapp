
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:sizer/sizer.dart';
const Color bgcolor = Colors.white;

// const Color bgcolor = Color.fromARGB(255, 18, 28, 36);
const Color primary = Color(0xffff7e2e);
Color secondary = Colors.grey.withOpacity(0.1);

const Color cCorrect = Color(0xFF538D4E);
const Color cInWorld = Color(0xFFB49F3A);
const Color cNotInWorld = Color(0xFF3A3A3C);


AppBar appbar1(
    {required String title1,
    required VoidCallback press,
    required Icon icn,
    required VoidCallback act,
    required Icon icn1}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 00,
    actions: [IconButton(onPressed: act, icon: icn1)],
    leading: IconButton(onPressed: press, icon: icn),
    centerTitle: true,
    title: Text(title1),
    titleTextStyle:
        TextStyle(color: primary, fontSize: 14.sp,fontFamily: 'Poppins',),
    iconTheme: IconThemeData(color: primary),
  );
}

TextStyle mainstyle = TextStyle(
  color: Colors.black,
  fontSize: 16.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle mainstyle1 = TextStyle(
  color: Colors.black,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle primarytxt = TextStyle(
  color: Colors.black,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  letterSpacing: 2,
);
TextStyle primarytxto = TextStyle(
  color: primary,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle header = TextStyle(
  color: Colors.black,
  fontSize: 15.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle mail = TextStyle(
  color: primary,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle primarytxtbig = TextStyle(
  color: Colors.black,
  fontSize: 15.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);

TextStyle primarytxt1 = TextStyle(
  color: primary,
  fontSize: 15.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);

TextStyle playertxt1 = TextStyle(
  color: Colors.pink,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);

TextStyle secondarytxt = TextStyle(
  color: primary,
  fontSize: 11.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle secondarytxt2 = TextStyle(
  color: primary,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle secondarytxtwhite = TextStyle(
  color: Colors.black,
  fontSize: 13.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
);
TextStyle secondarytxtwhite1 = TextStyle(
  color: Colors.black,
  fontSize: 11.5.sp,
fontFamily: 'Poppins',
  letterSpacing: 1,
);
TextStyle appname = TextStyle(
  color: Colors.black,
  fontSize: 12.sp,
fontFamily: 'Poppins',
  letterSpacing: 1.5,
);
TextStyle textbtn = TextStyle(
  color: primary,
  fontSize: 14.sp,
fontFamily: 'Poppins',
  letterSpacing: 2,
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
                  Get.to(()=>mainpage2());
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

