import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class GameInfo extends StatefulWidget {
  const GameInfo({Key? key}) : super(key: key);

  @override
  State<GameInfo> createState() => _GameInfoState();
}

class _GameInfoState extends State<GameInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: appbar1(
        title1: 'Tutorial',
        press: () => Get.back(),
        icn: Icon(Icons.arrow_back_ios_rounded),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                Text(
                  'How to Play?',
                  style: mainstyle,
                ),
                SizedBox(height: 2.h,),
                Align(alignment: Alignment.bottomLeft,child: Text(
                  'Rule 1:',
                  style: secondarytxt,
                ) ,),
                SizedBox(height: 0.5.h,),
                SizedBox(width: 85.w,
                  child: Text(
                    'Each Player Get 5 Questions if They Give Right Answer They got 20 Points.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(height: 5.h,),
                Align(alignment: Alignment.bottomLeft,child: Text(
                  'Rule 2:',
                  style: secondarytxt,
                ) ,),
                SizedBox(height: 0.5.h,),
                SizedBox(width: 85.w,
                  child: Text(
                    'Each Player Want Minimum 60 Points to Play.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(height: 5.h,),
                Align(alignment: Alignment.bottomLeft,child: Text(
                  'Rule 3:',
                  style: secondarytxt,
                ) ,),
                SizedBox(height: 0.5.h,),
                SizedBox(width: 85.w,
                  child: Text(
                    'Each Player Will Get 4 Options. Where One is Correct and Others are Wrong.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(height: 5.h,),
                Align(alignment: Alignment.bottomLeft,child: Text(
                  'Rule 4:',
                  style: secondarytxt,
                ) ,),
                SizedBox(height: 0.5.h,),
                SizedBox(width: 85.w,
                  child: Text(
                    'Each Player Has to Guess Correct Answer.',
                    style: primarytxt,
                  ),
                ),
                SizedBox(height: 5.h,),
                Align(alignment: Alignment.bottomLeft,child: Text(
                  'Rule 5:',
                  style: secondarytxt,
                ) ,),
                SizedBox(height: 0.5.h,),
                SizedBox(width: 85.w,
                  child: Text(
                    'Once a Player Answered a Question They Can\'t Goback And Change thier Answer.',
                    style: primarytxt,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
