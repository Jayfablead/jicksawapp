import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:jicksaw/const%20widget.dart';
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

  @override
  void initState() {
    super.initState();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor
        // Colors.black
        ,
        appBar: appbar1(
            title1: 'Roll Dice',
            press: () {},
            icn: Icon(null),
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
                                                            color: Colors.black,
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
                  // Positioned(
                  //   top: 0.0,
                  //   left:(marginValue >112 && marginValue < 182)? 112:(marginValue >182 && marginValue < 240)? 182.8:240.0,
                  //   // bottom: 260.0,
                  //   child: AnimatedContainer(
                  //       duration: Duration(milliseconds: 500),
                  //       curve: Curves.easeInOut,
                  //       margin: EdgeInsets.fromLTRB(marginValue, 0, 0, 0),
                  //       child: CustomPaint(
                  //         painter:(marginValue >112 && marginValue < 182)? JigsawClipper2(
                  //             (marginValue >112 && marginValue < 182)?Colors.red:Colors.blue
                  //         ):(marginValue >182 && marginValue < 240)
                  //             ? JigsawClipper3(
                  //             (marginValue >182 && marginValue < 240)?Colors.red:Colors.blue
                  //         ) :JigsawClipper4(
                  //             (marginValue >182 && marginValue < 240)?Colors.red:Colors.blue
                  //         ) ,
                  //         // child: Container(
                  //         //   height: 50,
                  //         //   width: 50,
                  //         //   color: Colors.red,
                  //         // ),
                  //       )
                  //   ),
                  // ),

                  //block1
                  Positioned(
                      top: 0.0,
                      left: 0.0,
                      // right: 270.0,
                      // bottom: 260.0,
                      child: CustomPaint(
                        size: Size(300,
                            400), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                        painter: JigsawClipper1(),
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 5.0, right: 20.0, top: 8.0),
                          // decoration: BoxDecoration(
                          //     border: Border.all(width: 3.0, color: Colors.black)),
                          // color: Colors.blue,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
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
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.pink),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    height: 30.0,
                                    width: 30.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.deepOrangeAccent),
                                  )
                                ],
                              )
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
                        size: Size(200, 300),
                        // painter: JigsawClipper2(),
                        child: Container(
                          padding:
                              EdgeInsets.only(top: 1.h, left: 20.0, right: 5.0),
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
                              child: Text(
                            "Remove your apponent piece",
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: primary),
                          )),
                        ),
                      )),
                  //block3
                  Positioned(
                      top: 0.0,
                      left: 50.w,
                      right: 50.w,
                      bottom: 260.0,
                      child: CustomPaint(
                        size: Size(200, 300),
                        painter: JigsawClipper3(),
                      )),
                  // block4
                  Positioned(
                    top: 0.0,
                    left: 70.w,
                    right: 0.0,
                    // bottom: 260.0,
                    child: CustomPaint(
                      painter: JigsawClipper4(),
                      child: Container(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 20.0, right: 5.0),
                        alignment: Alignment.center,
                        // height: 100,
                        // width:80,
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.black),
                        //   // color: Colors.green,
                        //   // shape: BoxShape.rectangle,
                        // ),
                        child: Center(
                            child: Text(
                          "Answer a Question to pickup a pieace",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: primary),
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
                      )),
                  //block6
                  Positioned(
                      bottom: 0.0,
                      left: 80.w,
                      // right: 270.0,
                      top: 40.w,
                      child: CustomPaint(
                        painter: JigsawClipper6(),
                      )),
                  // block7
                  Positioned(
                      bottom: 0.0,
                      left: 80.w,
                      // right: 270.0,
                      top: 60.w,
                      child: CustomPaint(
                        painter: JigsawClipper7(),
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
                        padding:
                            EdgeInsets.only(top: 15.0, left: 20.0, right: 5.0),
                        alignment: Alignment.center,
                        // height: 100,
                        // width:80,
                        // decoration: BoxDecoration(
                        //   border: Border.all(color: Colors.black),
                        //   // color: Colors.green,
                        //   // shape: BoxShape.rectangle,
                        // ),
                        child: Center(
                            child: Text(
                          "Answer a Question to pickup a pieace",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: primary),
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
                      child: Container(
                          // height: 20,
                          // width:100,
                          // decoration: BoxDecoration(
                          //   border:Border.all(color:Colors.black),
                          //   // color: Colors.green,
                          //   shape: BoxShape.rectangle,
                          // ),
                          ),
                    ),
                  ),
                  //block10
                  Positioned(
                    bottom: 0.0,
                    left: 30.w,
                    right: 270.0,
                    top: 80.w,
                    child: CustomPaint(
                      painter: JigsawClipper10(),
                      child: Container(
                          // height: 20,
                          // width:100,
                          // decoration: BoxDecoration(
                          //   border:Border.all(color:Colors.black),
                          //   // color: Colors.green,
                          //   shape: BoxShape.rectangle,
                          // ),
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
                          padding: EdgeInsets.only(top: 15.0, right: 40.0),
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
                                child: Text(
                                  "Answer a Question to pickup a pieace",
                                  style: TextStyle(color: primary),
                                ),
                              )),
                        )),
                  ),
                  //block12
                  Positioned(
                    left: 0.0,
                    // right: 270.0,
                    top: 60.w,
                    child: CustomPaint(
                      painter: JigsawClipper12(),
                      child: Container(
                          // height: 20,
                          // width:100,
                          // decoration: BoxDecoration(
                          //   border:Border.all(color:Colors.black),
                          //   // color: Colors.green,
                          //   shape: BoxShape.rectangle,
                          // ),
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
                      child: Container(
                          padding: EdgeInsets.only(top: 1.h, left: 2.7.w),
                          // height: 120,
                          // width:100,

                          // ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 3.7.h),
                              GestureDetector(
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
                                    });
                                  });
                                },
                                child: Text(
                                  (_value == 0) ? 'Roll Dice' : "Roll again",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          )),
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
                          // height: 20,
                          // width:100,
                          // decoration: BoxDecoration(
                          //   border:Border.all(color:Colors.black),
                          //   // color: Colors.green,
                          //   shape: BoxShape.rectangle,
                          // ),
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
                        '* Tap on Roll Dice To Start Game *',
                        style: primarytxt1,
                      ))
                  : Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Player 1 - Has To Run ${_value} times',
                        style: playertxt1,
                      )),
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.pink),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '-',
                          style:
                              TextStyle(color: Colors.black, fontSize: 25.sp),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Player 1',
                          style: mainstyle1,
                        ),
                        // SizedBox(width: 2.w,),
                        // (_value == 0)?Container():Text('You Have to Run : ${_value.toString()} times',style: secondarytxt,),
                      ],
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 30.0,
                          width: 30.0,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrangeAccent),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          '-',
                          style:
                              TextStyle(color: Colors.black, fontSize: 25.sp),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          'Player 2',
                          style: mainstyle1,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
