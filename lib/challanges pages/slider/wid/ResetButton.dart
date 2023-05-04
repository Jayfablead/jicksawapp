import 'package:flutter/material.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class ResetButton extends StatelessWidget {
  VoidCallback reset;
  String text;

  ResetButton(this.reset, this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reset,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.w),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)
          ),
          backgroundColor: primary
      ),
      child: Text("Reset",style: TextStyle(color: bgcolor,fontWeight: FontWeight.w700,letterSpacing: 2,fontSize: 14.sp,fontFamily: 'game'),),
    );
  }
}
