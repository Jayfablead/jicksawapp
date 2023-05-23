import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/initScreen.dart';
import 'package:jicksaw/Screen/login.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
    Timer(
      const Duration(seconds: 5),
          () => (usermodal == null)
          ?Get.offAll(Initscreen())
          :Get.offAll(mainpage2()) ,
    );
  }
  getdata()async{
    usermodal =  await SaveDataLocal.getDataFromLocal();
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
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
