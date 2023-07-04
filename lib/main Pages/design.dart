import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/challenegeModal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Screen/choicech.dart';
import 'package:jicksaw/Screen/choiceque.dart';
import 'package:jicksaw/Screen/doubleque.dart';

import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/loader.dart';

import 'package:jicksaw/main%20Pages/gameinfo.dart';
import 'package:jicksaw/main.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/main%20Pages/jigsawclipper.dart';
import 'package:jicksaw/jigsawcontainer.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:jicksaw/purchage/mysteryque.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/const.dart';

class design extends StatefulWidget {
  String? cat;
  String? age;

  design({Key? key, this.age, this.cat}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> with TickerProviderStateMixin {
  int? tap = 0;
  bool _showImage = false;
  AnimationController? _animationController;
  int? _value;
  int count = 0;
  double marginheight = 0.0;
  double margin = 0.0;
  String? step;
  final List<String> pages = ['/MemoryChallenge', '/MathtPage'];
  final Random random = Random();

  // List navigation = [
  //   MemoryChallenge(),
  //   Get.to(TriviaChallenge()),
  //   Get.to(Board()),
  //   Get.to(MathtPage()),
  // ];
  List<AlertDialog> alertDialogs = [
    AlertDialog(
      title: Text('Message 1'),
      content: Text('This is Message 1'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {},
        ),
      ],
    ),
    AlertDialog(
      title: Text('Message 2'),
      content: Text('This is Message 2'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {},
        ),
      ],
    ),
    // Add more AlertDialog widgets as needed
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      count = 0;
      print('*-*-*-*-*-*-*-*-*-* ${count}');
      gameapi();
    });
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _showImage = false;
          });
        }
      });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  double marginValue = 140.0;
  int cnt = 0;
  bool isloading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // mystery_dialogs = [
    //   update(context, 'Bonus Point', 'You Have Won a Piece and a Exra turn',
    //       callback: challwin),
    //   update(context, 'Penalty', 'You Have put Back last Piece You Win',
    //       callback: challwin)
    // ];
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
          drawer: drawer1(),
          key: _scaffoldKey,
          backgroundColor: bgcolor
          // Colors.black
          ,
          appBar: appbar1(
              title1: '',
              press: () {},
              icn: Icon(null),
              act: () {
                gameexit(context, 'Are You Sure ?', 'You want to Quit?',
                    callback: endapi);
              },
              icn1: Icon(Icons.logout_rounded)),
          body: SingleChildScrollView(
            child: isloading
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 3.w),
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            height: MediaQuery.of(context).size.width,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 5),
                              color: bgcolor
                              // Colors.black
                              ,
                              shape: BoxShape.rectangle,
                            ),
                          ),
                          Positioned(
                              top: 20.w,
                              left: 20.w,
                              right: 20.w,
                              bottom: 20.w,
                              child: Container(
                                height: 160,
                                width: 160,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  color: bgcolor
                                  // Colors.black
                                  ,
                                  shape: BoxShape.rectangle,
                                ),
                                child: Stack(
                                  children: [
                                    gamedata?.gameData?.steps == '1' ||
                                            gamedata?.gameData?.steps == '3' ||
                                            gamedata?.gameData?.steps == '5' ||
                                            gamedata?.gameData?.steps == '7' ||
                                            gamedata?.gameData?.steps == '9' ||
                                            gamedata?.gameData?.steps == '10' ||
                                            gamedata?.gameData?.steps == '11' ||
                                            gamedata?.gameData?.steps == '13' &&
                                                _showImage
                                        ? Text(
                                            '★ Tap on Jigsaw Piece for More Info ★',
                                            textAlign: TextAlign.center,
                                            style: primarytxt1,
                                          )
                                        : Container(),
                                    (gamedata?.gameData?.steps == '0' &&
                                            !_showImage)
                                        ? Align(
                                            alignment: Alignment.center,
                                            child: Text(
                                              '★ Tap on Roll Dice Button To Start Game ★',
                                              textAlign: TextAlign.center,
                                              style: primarytxt1,
                                            ))
                                        : Container(),
                                    Positioned(
                                      left: 18.w,
                                      top: 8.h,
                                      child: Visibility(
                                        visible: !_showImage,
                                        child: (_value == 6)
                                            ? Image.asset(
                                                "assets/dice/6.png",
                                                height: 100.0,
                                                width: 100.0,
                                                color: Colors.black,
                                              )
                                            : (_value == 5)
                                                ? Image.asset(
                                                    "assets/dice/5.png",
                                                    height: 100.0,
                                                    width: 100.0,
                                                    color: Colors.black,
                                                  )
                                                : (_value == 4)
                                                    ? Image.asset(
                                                        "assets/dice/4.png",
                                                        height: 100.0,
                                                        width: 100.0,
                                                        color: Colors.black,
                                                      )
                                                    : (_value == 3)
                                                        ? Image.asset(
                                                            "assets/dice/3.png",
                                                            height: 100.0,
                                                            width: 100.0,
                                                            color: Colors.black,
                                                          )
                                                        : (_value == 2)
                                                            ? Image.asset(
                                                                "assets/dice/2.png",
                                                                height: 100.0,
                                                                width: 100.0,
                                                                color: Colors
                                                                    .black,
                                                              )
                                                            : (_value == 1)
                                                                ? Image.asset(
                                                                    "assets/dice/1.png",
                                                                    height:
                                                                        100.0,
                                                                    width:
                                                                        100.0,
                                                                    color: Colors
                                                                        .black,
                                                                  )
                                                                : Container(),
                                      ),
                                    ),
                                    Visibility(
                                      visible: _showImage,
                                      child: Lottie.asset(
                                        "assets/dice.json",
                                        controller: _animationController,
                                      ),
                                    ),
                                  ],
                                ),
                              )),

                          //block1
                          Positioned(
                              top: 0.0,
                              left: 0.0,
                              // right: 270.0,
                              // bottom: 260.0,
                              child: ClipPath(
                                //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                clipper: JigsawClipper1(),
                                child: Container(
                                  width: 40.w,
                                  height: 30.w,
                                  color: Colors.blueGrey,
                                  alignment: Alignment.center,
                                  padding:
                                      EdgeInsets.only(top: 1.h, right: 10.w),
                                  // decoration: BoxDecoration(
                                  //     border: Border.all(width: 3.0, color: Colors.black)),
                                  // color: Colors.blue,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 25.0,
                                        width: 50.0,
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.0, vertical: 3.0),
                                        decoration: BoxDecoration(
                                            border: Border.all(color: primary),
                                            color: secondary,
                                            borderRadius:
                                                BorderRadius.circular(20.0)),
                                        child: Text(
                                          'Start',
                                          style: TextStyle(color: primary),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.w,
                                      ),
                                      gamedata?.gameData?.steps == '0'
                                          ? Row(
                                              children: [
                                                SizedBox(
                                                  width: 14.w,
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 7.w,
                                                  decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      border: Border.all(
                                                          color: Colors.black)),
                                                ),
                                              ],
                                            )
                                          : Container()
                                    ],
                                  ),
                                ),
                              )),
                          // block2
                          Positioned(
                              top: 0.0,
                              left: 27.w,
                              // right: 70.w,
                              // bottom: 160.0,
                              child: ClipPath(
                                clipper: JigsawClipper2(),
                                child: InkWell(
                                  onTap: () {
                                    gamedata?.gameData?.steps == '1'
                                        ? update(
                                            context,
                                            'You will get a Question',
                                            'Give Correct Answer and get a Jigsaw Piece',
                                            callback: goquestions)
                                        : null;
                                  },
                                  child: Container(
                                    width: 35.w,
                                    height: 30.w,
                                    color: Colors.black,
                                    padding: EdgeInsets.only(
                                        top: 1.5.h, left: 1.5.w, right: 13.w),
                                    alignment: Alignment.center,
                                    // height: 100,

                                    // color: Colors.yellow,
                                    // decoration: BoxDecoration(
                                    //   border: Border.all(color: Colors.black),
                                    //   // color: Colors.green,
                                    //   // shape: BoxShape.rectangle,
                                    // ),
                                    child: Center(
                                        child: Column(
                                      children: [
                                        Text(
                                          "Questions",
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(color: primary),
                                        ),
                                        gamedata?.gameData?.steps == '1'
                                            ? Column(
                                                children: [
                                                  SizedBox(
                                                    height: 1.5.h,
                                                  ),
                                                  Container(
                                                    height: 3.h,
                                                    width: 7.w,
                                                    decoration: BoxDecoration(
                                                        color: primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(90),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                ],
                                              )
                                            : Container()
                                      ],
                                    )),
                                  ),
                                ),
                              )),
                          //block3
                          Positioned(
                            top: 0.0,
                            left: 50.w,
                            // right: 30.w,
                            bottom: 260.0,
                            child: ClipPath(
                              clipper: JigsawClipper3(),
                              child: gamedata?.gameData?.steps == '2'
                                  ? Container(
                                      width: 30.w,
                                      height: 30.w,
                                      color: Colors.grey,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 3.h,
                                          ),
                                          Container(
                                            height: 3.h,
                                            width: 7.w,
                                            decoration: BoxDecoration(
                                                color: primary,
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                border: Border.all(
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(
                                      width: 30.w,
                                      height: 30.w,
                                      color: Colors.grey),
                            ),
                          ),
                          // block4
                          Positioned(
                            top: 0.0,
                            left: 70.w,
                            right: 0.0,
                            child: ClipPath(
                              clipper: JigsawClipper4(),
                              child: InkWell(
                                onTap: () {
                                  gamedata?.gameData?.steps == '3'
                                      ? update(
                                          context,
                                          'You will get a Random Challenge',
                                          'Give Correct Answer and get a Jigsaw Piece',
                                          callback: gochallange)
                                      : null;
                                },
                                child: Container(
                                  padding: EdgeInsets.only(
                                      top: 1.5.h, left: 5.w, right: 1.w),
                                  alignment: Alignment.center,
                                  height: 30.w,
                                  width: 80,
                                  color: Colors.brown,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(color: Colors.black),
                                  //   // color: Colors.green,
                                  //   // shape: BoxShape.rectangle,
                                  // ),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Challenges",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: primary),
                                      ),
                                      gamedata?.gameData?.steps == '3'
                                          ? Column(
                                              children: [
                                                SizedBox(
                                                  height: 1.5.h,
                                                ),
                                                Container(
                                                  height: 3.h,
                                                  width: 7.w,
                                                  decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      border: Border.all(
                                                          color: Colors.black)),
                                                ),
                                              ],
                                            )
                                          : Container()
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          ),

                          //block 5
                          Positioned(
                              // bottom: 0.0,
                              left: 80.w,
                              right: 0.0,
                              top: 20.w,
                              child: ClipPath(
                                clipper: JigsawClipper5(),
                                child: gamedata?.gameData?.steps == '4'
                                    ? Container(
                                        height: 30.w,
                                        width: 20.w,
                                        color: Colors.orange,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 3.h,
                                            ),
                                            Container(
                                              height: 3.h,
                                              width: 7.w,
                                              decoration: BoxDecoration(
                                                  color: primary,
                                                  borderRadius:
                                                      BorderRadius.circular(90),
                                                  border: Border.all(
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(
                                        height: 30.w,
                                        width: 20.w,
                                        color: Colors.orange,
                                      ),
                              )),
                          // block6
                          Positioned(
                              // bottom: 22.h,
                              left: 80.w,
                              // right: 270.0,
                              top: 32.w,
                              child: ClipPath(
                                clipper: JigsawClipper6(),
                                child: InkWell(
                                  onTap: () {
                                    gamedata?.gameData?.steps == '5'
                                        ? update(context, 'Bonus Point',
                                            'You Have Won a Piece and a Exra turn',
                                            callback: challwin)
                                        : null;
                                  },
                                  child: Container(
                                    height: 40.w,
                                    width: 20.w,
                                    color: Color(0xff255d2f),
                                    padding:
                                        EdgeInsets.only(left: 5.w, right: 1.w),
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Bonus",
                                          style: TextStyle(color: primary),
                                        ),
                                        gamedata?.gameData?.steps == '5'
                                            ? Column(
                                                children: [
                                                  Container(
                                                    height: 3.h,
                                                    width: 7.w,
                                                    decoration: BoxDecoration(
                                                        color: primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(90),
                                                        border: Border.all(
                                                            color:
                                                                Colors.black)),
                                                  ),
                                                ],
                                              )
                                            : Container()
                                      ],
                                    )),
                                  ),
                                ),
                              )),
                          // block7
                          Positioned(
                              // bottom: 0.0,
                              left: 80.w,
                              // right: 270.0,
                              top: 60.w,
                              child: ClipPath(
                                clipper: JigsawClipper7(),
                                child: Container(
                                  height: 30.w,
                                  width: 20.w,
                                  color: Colors.yellow,
                                  // padding: EdgeInsets.all(3.h),
                                  child: gamedata?.gameData?.steps == '6'
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              height: 8.w,
                                            ),
                                            Center(
                                              child: Container(
                                                height: 3.h,
                                                width: 7.w,
                                                decoration: BoxDecoration(
                                                    color: primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            90),
                                                    border: Border.all(
                                                        color: Colors.black)),
                                              ),
                                            ),
                                          ],
                                        )
                                      : Container(
                                          height: 30.w,
                                          width: 39.w,
                                          color: Colors.yellow,
                                        ),
                                ),
                              )),
                          // block8
                          Positioned(
                            bottom: 0.0,
                            left: 62.w,
                            right: 0.0,
                            top: 80.w,
                            child: ClipPath(
                              clipper: JigsawClipper8(),
                              child: InkWell(
                                onTap: () {
                                  gamedata?.gameData?.steps == '7'
                                      ? update(context, 'Penalty',
                                          'You Have put Back last Piece You Win',
                                          callback: challwin)
                                      : null;
                                },
                                child: Container(
                                  color: Colors.red,
                                  padding: EdgeInsets.only(
                                      top: 1.5.h, left: 2.w, right: 1.3.w),
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 80,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(color: Colors.black),
                                  //   // color: Colors.green,
                                  //   // shape: BoxShape.rectangle,
                                  // ),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Penalty",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      gamedata?.gameData?.steps == '7'
                                          ? Column(
                                              children: [
                                                SizedBox(height: 1.5.h),
                                                Container(
                                                  height: 3.h,
                                                  width: 7.w,
                                                  decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      border: Border.all(
                                                          color: Colors.black)),
                                                ),
                                              ],
                                            )
                                          : Container()
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          ),

                          //
                          // ),
                          // block9
                          Positioned(
                            bottom: 0.0,
                            left: 50.5.w,
                            // right: 270.0,
                            top: 80.w,
                            child: ClipPath(
                                clipper: JigsawClipper9(),
                                child: Container(
                                  height: 100,
                                  width: 17.w,
                                  color: Colors.cyan,
                                  padding: EdgeInsets.all(2.5.w),
                                  child: gamedata?.gameData?.steps == '8'
                                      ? Column(
                                          children: [
                                            SizedBox(height: 1.5.h),
                                            Container(
                                              height: 3.h,
                                              width: 7.w,
                                              decoration: BoxDecoration(
                                                  color: primary,
                                                  borderRadius:
                                                      BorderRadius.circular(90),
                                                  border: Border.all(
                                                      color: Colors.black)),
                                            ),
                                          ],
                                        )
                                      : Container(
                                          height: 100,
                                          width: 80,
                                          color: Colors.cyan,
                                        ),
                                )),
                          ),
                          //block10
                          Positioned(
                            bottom: 0.0,
                            left: 29.7.w,
                            // right: 45.w,
                            top: 80.w,
                            child: ClipPath(
                              clipper: JigsawClipper10(),
                              child: InkWell(
                                onTap: () {
                                  gamedata?.gameData?.steps == '9'
                                      ? update(context, 'Warp',
                                          'Your Piece Will Move Forward or BackWards TO Any Random number',
                                          callback: warp)
                                      : null;
                                },
                                child: Container(
                                  padding:
                                      EdgeInsets.only(top: 1.5.h, right: 1.3.w),
                                  alignment: Alignment.center,
                                  height: 100,
                                  width: 26.w,
                                  color: Colors.deepPurpleAccent,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(color: Colors.black),
                                  //   // color: Colors.green,
                                  //   // shape: BoxShape.rectangle,
                                  // ),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Text(
                                        "Warp",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(color: primary),
                                      ),
                                      gamedata?.gameData?.steps == '9'
                                          ? Column(
                                              children: [
                                                SizedBox(height: 1.5.h),
                                                Container(
                                                  height: 3.h,
                                                  width: 7.w,
                                                  decoration: BoxDecoration(
                                                      color: primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              90),
                                                      border: Border.all(
                                                          color: Colors.black)),
                                                ),
                                              ],
                                            )
                                          : Container()
                                    ],
                                  )),
                                ),
                              ),
                            ),
                          ),
                          //block11
                          Positioned(
                            bottom: 0.0,
                            left: 0.w,
                            right: 240.0,
                            top: 74.w,
                            child: ClipPath(
                              clipper: JigsawClipper11(),
                              child: InkWell(
                                onTap: () {
                                  gamedata?.gameData?.steps == '10'
                                      ? update(context, 'Double',
                                          'You Will Get a Question Guess Correct ans and Win Challenge.',
                                          callback: goupdated)
                                      : null;
                                },
                                child: Container(
                                  height: 100,
                                  width: 80,
                                  color: Color(0xff4f9e41),
                                  padding: EdgeInsets.only(
                                      right: gamedata?.gameData?.steps == '10'
                                          ? 7.w
                                          : 9.w,
                                      top: 4.h,
                                      left: gamedata?.gameData?.steps == '10'
                                          ? 5.w
                                          : 0.w),
                                  alignment: Alignment.center,
                                  // height: 100,
                                  // width:80,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(color: Colors.black),
                                  //   // color: Colors.green,
                                  //   // shape: BoxShape.rectangle,
                                  // ),
                                  child: SizedBox(
                                      width: 25.w,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Double",
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                            gamedata?.gameData?.steps == '10'
                                                ? Column(
                                                    children: [
                                                      SizedBox(height: 1.5.h),
                                                      Container(
                                                        height: 3.h,
                                                        width: 7.w,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        90),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                          //block12
                          Positioned(
                            left: 0.0,
                            // right: 270.0,
                            top: 55.1.w,
                            child: ClipPath(
                              clipper: JigsawClipper12(),
                              child: InkWell(
                                onTap: () {
                                  gamedata?.gameData?.steps == '11'
                                      ? showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height: 20.h,
                                              child: AlertDialog(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                      Radius.circular(10.0),
                                                    ),
                                                    side: BorderSide(
                                                        color: Colors.black)),
                                                content: SizedBox(
                                                  height: 19.5.h,
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                          'Choose any Task and do task to Get a piece'),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    15.w),
                                                        child: Divider(
                                                          color: Colors.black87,
                                                        ),
                                                      ),
                                                      TextButton(
                                                          onPressed: gochoice,
                                                          child: Text(
                                                            'Question',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    13.sp),
                                                          )),
                                                      Divider(
                                                        color: Colors.black87,
                                                      ),
                                                      TextButton(
                                                          onPressed: gochoicech,
                                                          child: Text(
                                                            'Challenge',
                                                            style: TextStyle(
                                                                fontSize:
                                                                    13.sp),
                                                          )),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        )
                                      : null;
                                },
                                child: Container(
                                  height: 100,
                                  width: 83,
                                  color: Colors.tealAccent,
                                  padding: EdgeInsets.only(
                                      top: 4.h,
                                      right: 2.w,
                                      left: gamedata?.gameData?.steps == '11'
                                          ? 3.w
                                          : 0),
                                  alignment: Alignment.center,
                                  // height: 100,
                                  // width:80,
                                  // decoration: BoxDecoration(
                                  //   border: Border.all(color: Colors.black),
                                  //   // color: Colors.green,
                                  //   // shape: BoxShape.rectangle,
                                  // ),
                                  child: SizedBox(
                                      width: 24.w,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Choice",
                                              style: TextStyle(color: primary),
                                            ),
                                            gamedata?.gameData?.steps == '11'
                                                ? Column(
                                                    children: [
                                                      Container(
                                                        height: 3.h,
                                                        width: 7.w,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        90),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),

                          //block13
                          Positioned(
                            // bottom:210.0,
                            left: 0.0,
                            // right: 270.0,
                            top: 33.w,
                            child: ClipPath(
                              clipper: JigsawClipper13(),
                              child: Container(
                                height: 118,
                                width: 83,
                                color: Colors.green,
                                padding: EdgeInsets.all(2.5.h),
                                child: gamedata?.gameData?.steps == '12'
                                    ? Column(
                                        children: [
                                          SizedBox(height: 3.5.h),
                                          Container(
                                            height: 3.h,
                                            width: 7.w,
                                            decoration: BoxDecoration(
                                                color: primary,
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                border: Border.all(
                                                    color: Colors.black)),
                                          ),
                                        ],
                                      )
                                    : Container(),
                              ),
                            ),
                          ),
                          //block 14
                          Positioned(
                            left: 0.0,
                            // right: 270.0,
                            top: 20.w,
                            child: ClipPath(
                              clipper: JigsawClipper14(),
                              child: InkWell(onTap: (){gamedata?.gameData?.steps == '13'
                                  ?update(context, 'Mystery', 'Do Any Given Tasks to win two pieces.',
                                  callback: gomystry):null;},
                                child: Container(
                                  height: 80,
                                  width: 83,
                                  color: Colors.black,
                                  padding: EdgeInsets.only(
                                      top: 2.h,
                                      right: 3.w,
                                      left: gamedata?.gameData?.steps == '13'
                                          ? 1.5.w
                                          : 1.5.w),
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      width: 24.w,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              "Mystery",
                                              style: TextStyle(color: primary),
                                            ),
                                            gamedata?.gameData?.steps == '13'
                                                ? Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        height: 3.h,
                                                        width: 7.w,
                                                        decoration: BoxDecoration(
                                                            color: primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(90),
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ],
                                                  )
                                                : Container()
                                          ],
                                        ),
                                      )),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                _showImage = true;
                              });
                              _animationController!.reset();
                              _animationController!.forward();
                              Timer(const Duration(seconds: 3), () {
                                setState(() {
                                  _value = Random().nextInt(6) + 1;
                                  print(_value);
                                  stepsapi();
                                  _showImage = false;
                                });
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 35.w,
                              margin: EdgeInsets.only(top: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: primary),
                              padding: EdgeInsets.all(2.h),
                              child: Text(
                                (_value == null) ? 'Roll Dice' : "Roll again",
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      (_value == null)
                          ? Container()
                          : Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Run ${_value} times',
                                style: playertxt1,
                              )),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  ),
          )),
    );
  }

  gameapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] =  "45";
    data['game_status'] = '1';
    data['action'] = 'get_follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().gameapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && gamedata?.status == "success") {
            print(
                "-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=- run: ${gamedata?.gameData?.steps}");
            print('*-*-*-*-*-*-*-*-*-* ${count}');
            gamedata?.gameData?.steps == '14'
                ? update(context, 'Loss', 'You Lost This Game',
                    callback: endapi)
                : null;
            gamedata?.gameData?.steps == '14'
                ? update(context, 'Loss', 'You Lost This Game',
                    callback: endapi)
                : null;

            setState(() {
              step = gamedata?.gameData?.steps;
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

  stepsapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] = "45";
    data['game_status'] = '1';
    data['steps_on_dice'] = '1';
    // data['steps_on_dice'] = _value.toString();
    data['action'] = 'follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().stepsapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            gameapi();
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

  endapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] = '45';

    data['action'] = 'game_end';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().endapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            Get.offAll(Tutorial());
            Get.snackbar(
              "Game Ended",
              "Successfully",
              icon: Image(image: AssetImage('assets/logo.png')),
              snackPosition: SnackPosition.TOP,
            );
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

  void goquestions() async {
    await Get.to(question(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gomystry() async {
    await Get.to(Mysteryque(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void goupdated() async {
    await Get.to(doublech(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gochoice() async {
    await Get.to(choceque(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gochoicech() async {
    await Get.to(choicechs(
      age: widget.age,
      cat: widget.cat,
      type: 'choice',
    ));
  }

  void gochallange() {
    int index = random.nextInt(pages.length);
    Get.toNamed(pages[index], arguments: {
      'catid': widget.cat,
      'age': widget.age,
      'type': 'chellenge'
    });
  }

  void showRandomAlertDialog() {
    int randomIndex = random.nextInt(alertDialogs.length);
    AlertDialog randomAlertDialog = alertDialogs[randomIndex];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return randomAlertDialog;
      },
    );
  }

  challwin() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'winning_challenges';
    data['chellenge_type'] = gamedata?.gameData?.steps == '5'
        ? 'bonus'
        : gamedata?.gameData?.steps == '13'
            ? 'mystery'
            : gamedata?.gameData?.steps == '9'
                ? 'warp'
                : 'penalty';
    data['ans'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().winchal(data).then((response) async {
          chalns = challModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chalns?.status == "success") {
            Get.back();
            setState(() {
              isloading = false;
            });
          } else {
            setState(() {
              isloading = false;
            });
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

  warp() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'winning_challenges';
    data['chellenge_type'] = 'warp';
    data['ans'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().winchal(data).then((response) async {
          chalns = challModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chalns?.status == "success") {
            Get.back();
            gameapi();
            setState(() {
              isloading = false;
            });
          } else {
            setState(() {
              isloading = false;
            });
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
