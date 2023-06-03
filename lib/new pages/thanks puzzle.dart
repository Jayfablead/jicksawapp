import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/main%20Pages/shoppage.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../other/const widget.dart';

class PurchaseTYPage extends StatefulWidget {
  String? name;
  String? price;


  PurchaseTYPage({Key? key, this.name, this.price}) : super(key: key);

  @override
  State<PurchaseTYPage> createState() => _PurchaseTYPageState();
}

class _PurchaseTYPageState extends State<PurchaseTYPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.5.w),
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            Column(
              children: [
                Container(
                  height: 21.h,
                  child: Lottie.asset('assets/you.json'),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  '😊 Thank you ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                    letterSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Text(
                  'You have Purchased ${widget.name}.',
                  style: mainstyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  'Thanks for Paying \$ ${widget.price} to Us.',
                  style: mainstyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text('We are Happy to Serve You our Puzzle Images',
                    style: mainstyle, textAlign: TextAlign.center),

                SizedBox(
                  height: 3.h,
                ),
                Text('Stay tuned with us',
                    style: mainstyle, textAlign: TextAlign.center),
                SizedBox(
                  height: 6.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(
                      ShopmainPage(),
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
                      'CONTINUE SHOPPING',
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
          ],
        ),
      ),
    );
  }
}
