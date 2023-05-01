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
      appBar: appbar1(
          title1: 'Results Screen',
          press: () {},
          icn: Icon(null),
          act: () {},
          icn1: Icon(null)),
      body: (total! < 60)
          ? WillPopScope(
              onWillPop: dialog,
              child: SingleChildScrollView(
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Total : ${total}/100',
                              style: primarytxt1,
                            ),
                          ),
                          Container(
                            height: 21.h,
                            child: Lottie.asset('assets/over.json'),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            '😔 Sorry ',
                            style: mainstyle,
                          ),
                          SizedBox(
                            height: 2.h,
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
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(mainpage2());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 85.w,
                              margin: EdgeInsets.only(top: 2.h),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.deepOrange.withOpacity(0.5),
                                      offset: Offset(0, 6),
                                      // blurRadius: 20,
                                      // spreadRadius: -5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.deepOrangeAccent),
                              padding: EdgeInsets.all(2.h),
                              child: Text(
                                'Restart the Game',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 18, 28, 36),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'game',
                                    letterSpacing: 2),
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
          : WillPopScope(onWillPop: dialog,
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
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Total : ${total}/100',
                            style: primarytxt1,
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          '🎊 Congratulations 🎊 ',
                          style: mainstyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 2.h,
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
                          height: 30.h,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: InkWell(
                            onTap: () {
                              Get.to(design());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 85.w,
                              margin: EdgeInsets.only(top: 2.h),
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.deepOrange.withOpacity(0.5),
                                      offset: Offset(0, 6),
                                      // blurRadius: 20,
                                      // spreadRadius: -5,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.deepOrangeAccent),
                              padding: EdgeInsets.all(2.h),
                              child: Text(
                                'Roll the Dice',
                                style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Color.fromARGB(255, 18, 28, 36),
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'game',
                                    letterSpacing: 2),
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
