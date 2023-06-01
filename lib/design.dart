import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/drawer.dart';
import 'package:jicksaw/jigsawclipper.dart';
import 'package:jicksaw/jigsawcontainer.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> with TickerProviderStateMixin {
  int? tap = 0;
  bool _showImage = false;
  AnimationController? _animationController;
  int _value = 0;
  double marginheight = 0.0;
  double margin = 0.0;
  num? step;

  @override
  void initState() {
    super.initState();
    setState(() {
      step = _value;
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer1(),
        key: _scaffoldKey,
        backgroundColor: bgcolor
        // Colors.black
        ,
        appBar: appbar1(
            title1: '',
            press: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icn: Icon(
              Icons.menu_rounded,
              color: primary,
            ),
            act: () {},
            icn1: Icon(null)),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
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
                          border: Border.all(color: Colors.black),
                          color: bgcolor
                          // Colors.black
                          ,
                          shape: BoxShape.rectangle,
                        ),
                        child: Stack(
                          children: [
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
                                                        color: Colors.black,
                                                      )
                                                    : (_value == 1)
                                                        ? Image.asset(
                                                            "assets/dice/1.png",
                                                            height: 100.0,
                                                            width: 100.0,
                                                            color:
                                                                Colors.black,
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
                      child: CustomPaint(
                        //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: JigsawClipper1(),
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 7.w),
                          // decoration: BoxDecoration(
                          //     border: Border.all(width: 3.0, color: Colors.black)),
                          // color: Colors.blue,
                          child: Row(mainAxisAlignment: MainAxisAlignment.center,
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
                            step == 0?  Row(
                                children: [
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  Container(
                                    height: 3.h,
                                    width: 7.w,
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(90),
                                        border: Border.all(color: Colors.black)),
                                  ),
                                ],
                              ):Container()
                            ],
                          ),
                        ),
                      )),
                  // block2
                  Positioned(
                      top: 0.0,
                      left: 30.w,
                      // right: 70.w,
                      // bottom: 160.0,
                      child: CustomPaint(
                        size: Size(250, 300),
                        // painter: JigsawClipper2(),
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 1.5.h, left: 1.5.w, right: 1.w),
                          alignment: Alignment.center,
                          // height: 100,
                          width: 80,
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
                                 step == 1? Column(
                                    children: [
                                      SizedBox(height: 1.5.h,),
                                      Container(
                                        height: 3.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius: BorderRadius.circular(90),
                                            border: Border.all(color: Colors.black)),
                                      ),
                                    ],
                                  ):Container()
                                ],
                              )),
                        ),
                      )),
                  //block3
                  Positioned(
                    top: 0.0,
                    left: 50.w,
                    right: 30.w,
                    bottom: 260.0,
                    child: CustomPaint(
                      size: Size(200, 300),
                      painter: JigsawClipper3(),
                      child:step == 2? Column(
                        children: [
                          SizedBox(height:3.h,),
                          Container(
                            height: 3.h,
                            width: 7.w,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(90),
                                border: Border.all(color: Colors.black)),
                          ),
                        ],
                      ):Container(),
                    ),
                  ),
                  // block4
                  Positioned(
                    top: 0.0,
                    left: 70.w,
                    right: 0.0,
                    child: CustomPaint(
                      painter: JigsawClipper4(),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 1.5.h, left: 5.w, right: 1.w),
                        alignment: Alignment.center,
                        // height: 100,
                        // width:80,
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
                        ),step == 3?Column(
                                  children: [
                                    SizedBox(height: 1.5.h,),
                                    Container(
                                      height: 3.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius: BorderRadius.circular(90),
                                          border: Border.all(color: Colors.black)),
                                    ),
                                  ],
                                ):Container()
                              ],
                            )),
                      ),
                    ),
                  ),

                  //block 5
                  Positioned(
                      // bottom: 0.0,
                      left: 80.w,
                      right: 0.0,
                      top: 20.w,
                      child: CustomPaint(
                        painter: JigsawClipper5(),
                        child: step == 4?Column
                          (
                          children: [
                            SizedBox(height: 3.h,),
                            Container(
                              height: 3.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(90),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ],
                        ):Container(),
                      )),
                  //block6
                  Positioned(
                      bottom: 22.h,
                      left: 80.w,
                      // right: 270.0,
                      top: 40.w,
                      child: CustomPaint(
                        painter: JigsawClipper6(),
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 5.w, right: 1.w),
                          child: Center(
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                            "Bonus",

                            style: TextStyle(color: primary),
                          ),
                              step == 5  ?  Column(
                                    children: [
                                      Container(
                                        height: 3.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius: BorderRadius.circular(90),
                                            border: Border.all(color: Colors.black)),
                                      ),
                                    ],
                                  ):Container()
                                ],
                              )),
                        ),
                      )),
                  // block7
                  Positioned(
                      bottom: 0.0,
                      left: 80.w,
                      // right: 270.0,
                      top: 60.w,
                      child: CustomPaint(
                        painter: JigsawClipper7(),
                        child: Padding(
                          padding:  EdgeInsets.all(3.h),
                          child:step == 6? Column(
                            children: [
                              Container(
                                height: 3.h,
                                width: 7.w,
                                decoration: BoxDecoration(
                                    color: primary,
                                    borderRadius: BorderRadius.circular(90),
                                    border: Border.all(color: Colors.black)),
                              ),
                            ],
                          ):Container(),
                        ),
                      )),
                  // block8
                  Positioned(
                    bottom: 0.0,
                    left: 70.w,
                    right: 0.0,
                    top: 80.w,
                    child: CustomPaint(
                      painter: JigsawClipper8(),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 1.5.h, left: 2.w, right: 1.3.w),
                        alignment: Alignment.center,
                        // height: 100,
                        // width:80,
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
                          style: TextStyle(color: primary),
                        ),
                               step == 7? Column(
                                  children: [
                                    SizedBox(height: 1.5.h),
                                    Container(
                                      height: 3.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius: BorderRadius.circular(90),
                                          border: Border.all(color: Colors.black)),
                                    ),
                                  ],
                                ):Container()
                              ],
                            )),
                      ),
                    ),
                  ),

                  //
                  // ),
                  // block9
                  Positioned(
                    bottom: 0.0,
                    left: 55.w,
                    // right: 270.0,
                    top: 80.w,
                    child: CustomPaint(
                      painter: JigsawClipper9(),
                      child: Padding(
                        padding:  EdgeInsets.all(2.5.w),
                        child: step == 8 ?Column(
                          children: [
                            SizedBox(height: 1.5.h),
                            Container(
                              height: 3.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(90),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ],
                        ):Container(),
                      )
                    ),
                  ),
                  //block10
                  Positioned(
                    bottom: 0.0,
                    left: 30.w,
                    right: 45.w,
                    top: 80.w,
                    child: CustomPaint(
                      painter: JigsawClipper10(),
                      child: Container(
                        padding: EdgeInsets.only(top: 1.5.h, right: 1.3.w),
                        alignment: Alignment.center,
                        // height: 100,
                        // width:80,
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
                        ),step == 9 ?Column(
                                  children: [
                                    SizedBox(height: 1.5.h),
                                    Container(
                                      height: 3.h,
                                      width: 7.w,
                                      decoration: BoxDecoration(
                                          color: primary,
                                          borderRadius: BorderRadius.circular(90),
                                          border: Border.all(color: Colors.black)),
                                    ),
                                  ],
                                ):Container()
                              ],
                            )),
                      ),
                    ),
                  ),
                  //block11
                  Positioned(
                    bottom: 0.0,
                    left: 0.w,
                    right: 240.0,
                    top: 80.w,
                    child: CustomPaint(
                      painter: JigsawClipper11(),
                      child: Container(
                        padding: EdgeInsets.only(right: step == 10?7.w:9.w,top: 1.5.h,left: step == 10?5.w:0.w),
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
                                    "Double",
                                    style: TextStyle(color: primary),
                                  ),
                                  step == 10 ?Column(
                                    children: [
                                      SizedBox(height: 1.5.h),
                                      Container(
                                        height: 3.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius: BorderRadius.circular(90),
                                            border: Border.all(color: Colors.black)),
                                      ),
                                    ],
                                  ):Container()
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),
                  //block12
                  Positioned(
                    left: 0.0,
                    // right: 270.0,
                    top: 60.w,
                    child: CustomPaint(
                      painter: JigsawClipper12(),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 2.h, right: 6.w, left: step == 11?3.w:0),
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
                                 step == 11? Column(
                                    children: [

                                      Container(
                                        height: 3.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius: BorderRadius.circular(90),
                                            border: Border.all(color: Colors.black)),
                                      ),
                                    ],
                                  ):Container()
                                ],
                              ),
                            )),
                      ),
                    ),
                  ),

                  //block13
                  Positioned(
                    // bottom:210.0,
                    left: 0.0,
                    // right: 270.0,
                    top: 40.w,
                    child: CustomPaint(
                      painter: JigsawClipper13(),
                      child: Padding(
                        padding:  EdgeInsets.all(2.5.h),
                        child: step == 12?Column(
                          children: [
                            SizedBox(height: 1.5.h),
                            Container(
                              height: 3.h,
                              width: 7.w,
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(90),
                                  border: Border.all(color: Colors.black)),
                            ),
                          ],
                        ):Container(),
                      ),
                    ),
                  ),
                  //block 14
                  Positioned(
                    left: 0.0,
                    // right: 270.0,
                    top: 20.w,
                    child: CustomPaint(
                      painter: JigsawClipper14(),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 1.7.h, right: 10.w, left: Step == 13?3.5.w:0),
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
                                  ),step == 13?Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Container(
                                        height: 3.h,
                                        width: 7.w,
                                        decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius: BorderRadius.circular(90),
                                            border: Border.all(color: Colors.black)),
                                      ),
                                    ],
                                  ):Container()
                                ],
                              ),
                            )),
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
                          _showImage = false;
                          step = step! + _value;
                          step == 1?buildErrorDialog(context, 'Questions' ,'hyhy'):Container();
                          step == 3?buildErrorDialog(context, 'Challenges' ,'hyhy'):Container();
                          step == 5?buildErrorDialog(context, 'Bonus' ,'hyhy'):Container();
                          step == 7?buildErrorDialog(context, 'Penalty' ,'hyhy'):Container();
                          step == 9?buildErrorDialog(context, 'Warp' ,'hyhy'):Container();
                          step == 10?buildErrorDialog(context, 'Double' ,'hyhy'):Container();
                          step == 11?buildErrorDialog(context, 'Choice' ,'hyhy'):Container();
                          step == 13?buildErrorDialog(context, 'Mystery' ,'hyhy'):Container();
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
                        (_value == 0) ? 'Roll Dice' : "Roll again",
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
              (_value == 0)
                  ? Align(
                      alignment: Alignment.center,
                      child: Text(
                        '★ Tap on Roll Dice Button To Start Game ★',
                        textAlign: TextAlign.center,
                        style: primarytxt1,
                      ))
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
        ));
  }
}
