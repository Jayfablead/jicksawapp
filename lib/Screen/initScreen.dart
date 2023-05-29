import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/login.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Screen/signup.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class Initscreen extends StatefulWidget {
  const Initscreen({super.key});

  @override
  State<Initscreen> createState() => _InitscreenState();
}

class _InitscreenState extends State<Initscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  getdata() async {
    usermodal = await SaveDataLocal.getDataFromLocal();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        height: double.infinity.h,
        width: double.infinity.w,
        decoration: BoxDecoration(
          color: bgcolor,
          // image: DecorationImage(
          //     image: AssetImage("assets/back.jpg"),
          //     colorFilter: ColorFilter.mode(
          //       Colors.black.withOpacity(0.8),
          //       BlendMode.srcOver,
          //     ),
          //     fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 20.h,
                  width: 90.w,
                  child: Lottie.asset('assets/lin.json'),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                  child: Text(
                "Jigsaw Puzzle",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 17.sp,
                  fontFamily: 'Poppins',
                  letterSpacing: 2,
                ),
              )),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  width: 85.w,
                  child: Text(
                    "Give Answers of Simple Questions and Win A Dice Roll To Play Jigsaw",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                      fontSize: 12.sp,
                      fontFamily: 'Poppins',
                      letterSpacing: 2,
                    ),
                  )),
              SizedBox(
                height: 25.h,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(() => signup());
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
                          'GET STARTED',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'game',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => login(),
                        //     ));

                        (usermodal == null)
                            ? Get.to(() => login())
                            : Get.to(() => mainpage2());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.symmetric(vertical: 2.h),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: primary)),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'I ALREADY HAVE AN ACCOUNT',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                            color: primary,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
