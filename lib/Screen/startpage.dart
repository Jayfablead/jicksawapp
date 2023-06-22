import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class Startpage extends StatefulWidget {
  String? pic;

  Startpage({super.key, this.pic});

  @override
  State<Startpage> createState() => _StartpageState();
}

class _StartpageState extends State<Startpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10.h),
          Image.network(
            'https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png',
            height: 35.h,
            width: 75.w,
            fit: BoxFit.contain,
          ),
          SizedBox(
            height: 50.h,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Let\'s Start !',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Jigsaw App is Combined platform for Physical Jigsaw Board and Mobile app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Where you can learn things and complete jigsaw board',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),
                  SizedBox(
                    height: 0.h,
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
                        'START',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
