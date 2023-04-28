import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/initScreen.dart';
import 'package:jicksaw/Screen/login.dart';

import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      return Get.offAll(Initscreen());
    });
    return SafeArea(
        child: Scaffold(
          backgroundColor: bgcolor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // height: 90.h,
                  // width: 95.w,

                  child: Lottie.asset('assets/logo.json'),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  height: 40.h,
                  width: 80.w,
                  child: Lottie.asset('assets/loading.json'),
                ),
              ],
            ),
          ),
        ));
  }
}
