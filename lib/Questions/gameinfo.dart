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
      backgroundColor:
       bgcolor
      // Colors.black
      ,

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                         Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: primary,
                        )),
                    SizedBox(
                      width: 22.w,
                    ),
                    Text(
                      'Tutorial',
                      style: primarytxt1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 3.h,
                ),
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
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Get 5 Questions if They Give Right Answer They got 20 Points.',
                    style: secondarytxtwhite1,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 2:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Want Minimum 60 Points to Play.',
                    style: secondarytxtwhite1,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 3:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Will Get 4 Options. Where One is Correct and Others are Wrong.',
                    style: secondarytxtwhite1,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 4:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Each Player Has to Guess Correct Answer.',
                    style: secondarytxtwhite1,
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Rule 5:',
                    style: primarytxto,
                  ),
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                SizedBox(
                  width: 85.w,
                  child: Text(
                    'Once a Player Answered a Question They Can\'t Goback And Change thier Answer.',
                    style: secondarytxtwhite1,
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                InkWell(
                  onTap: () {
                    Get.to(()=>FirstQue());
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
                        fontFamily: 'Poppins',
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
