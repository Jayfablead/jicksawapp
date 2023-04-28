import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/login.dart';
import 'package:jicksaw/Screen/signup.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class Initscreen extends StatefulWidget {
  const Initscreen({super.key});

  @override
  State<Initscreen> createState() => _InitscreenState();
}

class _InitscreenState extends State<Initscreen> {
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
                child: CircleAvatar(
                  radius: 18.w,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    "assets/logo.png",
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Center(
                  child: Text(
                    "Jigsaw Puzzle",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.sp,
                        fontFamily: 'Meta1'),
                  )),
              SizedBox(
                height: 2.h,
              ),
              SizedBox(
                  width: 70.w,
                  child: Text(
                    "Give Answers of Simple Questions and Win A Dice Roll To Play Jigsaw",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 10.sp,
                        fontFamily: 'Meta1'),
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => signup(),
                        //     ));
                        Get.to(signup());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.only(top: 2.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.deepOrange),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'GET STARTED',
                          style: TextStyle(
                              color: Color.fromARGB(255, 18, 28, 36),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Meta1'),
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

                        Get.to(login());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 85.w,
                        margin: EdgeInsets.symmetric(vertical: 2.h),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.grey)),
                        padding: EdgeInsets.all(2.h),
                        child: Text(
                          'I ALREADY HAVE AN ACCOUNT',
                          style: TextStyle(
                              color: Colors.deepOrange, fontFamily: 'Meta1'),
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h),
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
