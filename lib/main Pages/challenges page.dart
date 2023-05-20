import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/challanges%20pages/Trivia.dart';
import 'package:jicksaw/challanges%20pages/creativity/drawpage.dart';
import 'package:jicksaw/challanges%20pages/creativity/storypage.dart';
import 'package:jicksaw/challanges%20pages/math/homepage.dart';
import 'package:jicksaw/challanges%20pages/memory/home.dart';
import 'package:jicksaw/challanges%20pages/words/homeboard.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/drawer.dart';
import 'package:sizer/sizer.dart';

import '../challanges pages/slider/Board.dart';

class Challangepage extends StatefulWidget {
  const Challangepage({Key? key}) : super(key: key);

  @override
  State<Challangepage> createState() => _ChallangepageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ChallangepageState extends State<Challangepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer1(),
      key: _scaffoldKey,
      backgroundColor:
      bgcolor

      ,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        print('object');
                        _scaffoldKey.currentState?.openDrawer();
                      },
                      icon: Icon(
                        Icons.menu_rounded,
                        color: primary,
                      )),
                  SizedBox(
                    width: 22.w,
                  ),
                  Text(
                    'Challanges page',
                    style: primarytxt1,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height,
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {Get.to(()=>MemoryChallenge());},
                      child: Text(
                        'Memory challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {Get.to(()=>Board());},
                      child: Text(
                        'Puzzle challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {Get.to(()=>TriviaChallenge());},
                      child: Text(
                        'Trivia challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Dexterity challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {Get.to(()=> DrawingPage());},
                      child: Text(
                        'Creativity challenge ',
                        style: textbtn,
                      ),
                    ),
                    TextButton(
                      onPressed: () {Get.to(()=> Storypage());},
                      child: Text(
                        'Creativity challenge 2',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {Get.to(()=> MathtPage());},
                      child: Text(
                        'Math challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {Get.to(()=> WordleScreen());},
                      child: Text(
                        'Word challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Observation challenge ',
                        style: textbtn,
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Logic challenge ',
                        style: textbtn,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
