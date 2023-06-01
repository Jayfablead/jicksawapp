import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/design.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const.dart';
import '../challanges pages/memory/utils/alertdialog.dart';

class ResultsPage extends StatefulWidget {
  String? firstans;

  ResultsPage({
    Key? key,
    required this.firstans,
  }) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

int total = 0;

class _ResultsPageState extends State<ResultsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: (widget.firstans == '0')
          ? WillPopScope(
              onWillPop: dialog,
              child: SingleChildScrollView(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6.h,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 21.h,
                            child: Lottie.asset('assets/over.json'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '😔 Sorry ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            'You\'ve Lost',
                            style: mainstyle,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'The Answer You Guessed is Wrong',
                            style: mainstyle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Divider(
                            color: secondary,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            'Since You\'ve Lost You Have To Restart The Game',
                            style: mainstyle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text('Press The Button And Restart The Game',
                              style: mainstyle, textAlign: TextAlign.center),
                          SizedBox(
                            height: 6.h,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => mainpage2());
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
                                'Restart the Game',
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
                )),
              ),
            )
          : WillPopScope(
              onWillPop: dialog,
              child: Center(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.w),
                child: Stack(
                  children: [
                    Container(
                      child: Lottie.asset('assets/passed.json'),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 9.h,
                        ),
                        Text(
                          '🎊 Congratulations 🎊 ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins',
                            letterSpacing: 2,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        Text(
                          'You\'ve Passed',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'The Answer You Guessed is Right',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Divider(
                          color: secondary,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'You Have Won A Dice Roll',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Press The Button And Roll The Dice',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: () {
                              start();
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
                                'Roll the Dice',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
            ),
    );
  }

  Future<bool> dialog() async {
    home(context);
    return await false;
  }

  start() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'game_start';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().startgameapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            Get.to(() => design());
            Get.snackbar(
              "Game Started",
              "Successfully",
              icon: Image(image: AssetImage('assets/logo.png')),
              snackPosition: SnackPosition.TOP,

            );
            print("Started");
            setState(() {
              isloading = false;
            });
          } else {
            isloading = false;
          }
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
