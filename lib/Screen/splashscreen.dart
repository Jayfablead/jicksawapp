import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/initScreen.dart';
import 'package:jicksaw/Screen/startpage.dart';
import 'package:jicksaw/profile/login.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';

import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    Timer(
      const Duration(seconds: 5),
      () => (usermodal == null)
          ? Get.offAll(
              Initscreen(),
            )
          : Get.offAll(
              Startpage(),
            ),
    );
  }

  getdata() async {
    usermodal = await SaveDataLocal.getDataFromLocal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 3.h,
            ),
            Container(
              height: 60.h,
              width: 85.w,
              child: Lottie.asset('assets/splash/cube.json'),
            ),
            SizedBox(
              height: 3.h,
            ),
            Column(
              children: [
                Container(
                  height: 20.h,
                  width: 100.w,
                  child: Lottie.asset('assets/splash/circle.json'),
                ),
                Text(
                  'Please Wait ...',
                  style: TextStyle(
                      color: primary, fontSize: 13.sp, fontFamily: 'Poppins'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
