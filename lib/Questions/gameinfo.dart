import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/FirstQuestion.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/drawer.dart';
import 'package:sizer/sizer.dart';

class Tutorial extends StatefulWidget {
  const Tutorial({Key? key}) : super(key: key);

  @override
  State<Tutorial> createState() => _TutorialState();
}
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _TutorialState extends State<Tutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgcolor,
      appBar: appbar1(act: (){},icn1: Icon(null),
        title1: 'Tutorial',
        press: () =>   _scaffoldKey.currentState!.openDrawer(),
        icn: Icon(Icons.abc_rounded),
      ),
      drawer: drawer1(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                Text(
                  'How to Play?',
                  style: mainstyle,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 1:',
                    style: secondarytxt,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Get 5 Questions if They Give Right Answer They got 20 Points.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 2:',
                    style: secondarytxt,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Want Minimum 60 Points to Play.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 3:',
                    style: secondarytxt,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Will Get 4 Options. Where One is Correct and Others are Wrong.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 4:',
                    style: secondarytxt,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Has to Guess Correct Answer.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 5:',
                    style: secondarytxt,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Once a Player Answered a Question They Can\'t Goback And Change thier Answer.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(FirstQue());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(boxShadow: [
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
                      'Start',
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: Color.fromARGB(255, 18, 28, 36),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'game',
                        letterSpacing: 2,),
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
