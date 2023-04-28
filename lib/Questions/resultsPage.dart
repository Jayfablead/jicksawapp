import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          ? Center(
              child: Column(
                children: [
                  Text(
                    'Game Over 😔',
                    style: mainstyle,
                  ),
                ],
              ),
            )
          : Center(
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 3.w),
                child: Stack(
                  children: [
                    Container(
                      child: Lottie.asset('assets/passed.json'),
                    ),
                    Column(
                    children: [
                      Align(alignment: Alignment.centerRight,
                        child: Text(
                          'Total : ${total}/100',
                          style: primarytxt1,
                        ),
                      ),
                      SizedBox(height: 2.h,),
                      Text(
                        '🎊 Congratulations 🎊 ',
                        style: mainstyle,
                      ),
                      SizedBox(height: 2.h,),

                      Text(
                        'You\'ve Passed',
                        style: mainstyle,
                      ),
                      SizedBox(height: 2.h,),
                      total == 100?Text(
                        'You Guessed All Answers Right',
                        style: mainstyle,
                      ):total == 80?Text(
                        'You Guessed 4 Answers Right',
                        style: mainstyle,
                      ):Text(
                        'You Guessed 3 Answers Right',
                        style: mainstyle,
                      ),
                      SizedBox(height: 2.h,),
                      Divider(color: secondary,),
                      SizedBox(height: 2.h,),
                      Text(
                        'You Have Won A Dice Roll',
                        style: mainstyle,
                      ),
                      SizedBox(height: 3.h,),
                      Text(
                        'Press The Button And Roll The Dice',
                        style: mainstyle,
                      ),
                      SizedBox(height: 30.h,),

                      Align(alignment: Alignment.bottomCenter,
                        child: InkWell(
                          onTap: () {Get.to(design());},
                          child: Container(
                            alignment: Alignment.center,
                            width: 85.w,
                            margin: EdgeInsets.only(top: 2.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.deepOrange),
                            padding: EdgeInsets.all(2.h),
                            child: Text(
                              'Roll the Dice',
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Color.fromARGB(255, 18, 28, 36),
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Meta1'),
                            ),
                          ),
                        ),
                      )
                    ],
            ),
                  ],
                ),
              )),
    );
  }
}
