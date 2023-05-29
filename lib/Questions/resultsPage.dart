import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/design.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class ResultsPage extends StatefulWidget {
  int firstans;
  int secans;
  int thirdans;
  int fourthans;
  int fifthans;

  ResultsPage(
      {Key? key,
      required this.firstans,
      required this.secans,
      required this.thirdans,
      required this.fourthans,
      required this.fifthans})
      : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

int? total;

class _ResultsPageState extends State<ResultsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    total = widget.firstans +
        widget.secans +
        widget.thirdans +
        widget.fourthans +
        widget.fifthans;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: (total! < 60)
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
                            height: 2.5.h,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Total : ${total}/100',
                              style: TextStyle(
                                color: primary,
                                fontSize: 15.sp,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2.5.h,
                          ),
                          Text(
                            'You\'ve Lost',
                            style: mainstyle,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          total == 0
                              ? Text(
                                  'You Haven\'t Guessed a Single Answer Right',
                                  style: mainstyle,
                                  textAlign: TextAlign.center,
                                )
                              : total == 10
                                  ? Text(
                                      'You only Guessed a Sinle Answer Right',
                                      style: mainstyle,
                                      textAlign: TextAlign.center,
                                    )
                                  : Text(
                                      'You only Guessed 2 Answers Right',
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
                          height: 8.h,
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
                          height: 5.h,
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Total : ${total}/100',
                            style: TextStyle(
                              color: primary,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          'You\'ve Passed',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        total == 100
                            ? Text(
                                'You Guessed All Answers Right',
                                style: mainstyle,
                                textAlign: TextAlign.center,
                              )
                            : total == 80
                                ? Text(
                                    'You Guessed 4 Answers Right',
                                    style: mainstyle,
                                    textAlign: TextAlign.center,
                                  )
                                : Text(
                                    'You Guessed 3 Answers Right',
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
                              Get.to(() => design());
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
}
