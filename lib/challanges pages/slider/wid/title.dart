import 'package:flutter/material.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class MyTitle extends StatelessWidget {
  var size;

  MyTitle(this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.h,
      padding: EdgeInsets.all(5.0),
      child: Text(
        "Puzzle Challenge",
        style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 17.sp,
            color: primary,
            decoration: TextDecoration.none),
      ),
    );
  }
}