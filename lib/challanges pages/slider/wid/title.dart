import 'package:flutter/material.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:sizer/sizer.dart';

class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(alignment: Alignment.center,
      height: 5.h,
      padding: EdgeInsets.all(5.0),
      child: Text(
        "Puzzle Challenge",
        style: TextStyle(
            color: primary,
            fontSize: 13.sp,
          fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
            decoration: TextDecoration.none),
      ),
    );
  }
}