import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class CharPurchased extends StatefulWidget {
  String? pic;

  CharPurchased({super.key, this.pic});

  @override
  State<CharPurchased> createState() => _CharPurchasedState();
}

class _CharPurchasedState extends State<CharPurchased> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  child: Lottie.asset('assets/cong.json'),
                ),
              ),
              Positioned(
                  top: 08.h,
                  left: 13.w,
                  child: Image.network(
                    widget.pic.toString(),
                    height: 35.h,
                    width: 75.w,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          SizedBox(
            height: 40.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Congratulations !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Thanks For Purchasing This Character',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Now You Have Access to this Premium Character',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp,
                      color: Colors.black.withOpacity(0.6),
                      fontFamily: 'Poppins'),
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      mainpage2(),
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(2.h),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
