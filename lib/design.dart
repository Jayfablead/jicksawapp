import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
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
  int _value = 1;
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
        appBar: AppBar(
            elevation: 00,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              'GameTime',
              style: TextStyle(color: Colors.black),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       _value=Random().nextInt(6)+1;
            //       print("dice" + _value.toString());
            //
            //       double temp1= (_value-1)*50;
            //
            //       marginValue = temp1 + marginValue;
            //       print("marginvalue : :" + marginValue.toString());
            //       print("No of block :" + ((marginValue >112 && marginValue<=182) ?"2" : (marginValue >182 && marginValue<240)?"3":"4"));
            //       if(marginValue >= 360){
            //       marginheight =temp1+marginheight;
            //       print("marginheight"+marginheight.toString());
            //
            //
            //
            //       }
            //
            //
            //     });
            //     // setState(() {
            //     //   _value = Random().nextInt(6) + 1;
            //     //   // _value=1;
            //     //   print(_value);
            //     // cnt= cnt+1;
            //     // double temp1 = (_value - 1) * 80.0;
            //     //   double temp2 =(_value-1)*50.0;
            //     // if(cnt == 1)
            //     // {
            //     //   print("hit"+cnt.toString());
            //     //  if( _value <=3) {
            //     //    marginValue = 0.0;
            //     //    marginValue = 140 + temp1+marginValue;
            //     //    marginheight = temp2;
            //     //    // temp2=0.0;
            //     //    // marginheight = temp2 +marginheight;
            //     //   }
            //     // else{
            //     //    marginValue = 0.0;
            //     //    marginValue = 140 + temp1+marginValue;
            //     //   marginheight=0.0;
            //     //   marginheight =marginheight +temp2;
            //     //  }
            //     // }
            //     // else
            //     //   {
            //     //     print("hit"+cnt.toString());
            //     //     marginValue = temp1+marginValue+60;
            //     //     marginheight =marginheight +temp2+70;
            //     //     if(marginheight> 360){
            //     //       double temp3= (_value-1)*50;
            //     //       margin=temp3+margin+100;
            //     //       print("temp3 : "+temp3.toString());
            //     //     }
            //     //   }
            //     //   print("temp1:"+temp1.toString());
            //     //   print("marginvalue:"+marginValue.toString());
            //     //   print ((marginValue <182 && marginValue > 112)? "2":(marginValue <240 && marginValue >182)
            //     //       ? "3" :marginValue < 360 && marginValue >240?"4" :"vertical");
            //     //   // print((marginValue >112 && marginValue < 182)? 112:(marginValue >182 && marginValue < 240)? 182.8:240.0,);
            //     //   print("temp2:"+temp2.toString());
            //     //   // marginheight = temp2 + marginheight+100;
            //     //   print("marginheight:"+marginheight.toString());
            //     //   print(marginValue < 360?"hori":(marginheight >0 && marginheight <100) ? "hori" :(marginheight >100 && marginheight<=170)?"5":(marginheight >170 && marginheight <220)?"6":(marginheight >220 && marginheight <260)?"7":(marginheight >=260 && marginheight <360)?"8":"fvgbgb" ) ;
            //     //   // double temp3 = (_value-1) * 50;
            //     //
            //     //   // margin = margin+temp3+0;
            //     //   print("margin" + margin.toString());
            //     //   // print(marginheight>360?margin():"fhjhfgh");
            //     //
            //     // });
            //   },
            //   child: Text("hit"),
            // ),
            // SizedBox(height: 50,),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    color: Colors.white,
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
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                      ),
                      child: Stack(
                        children: [
                          Visibility(
                            visible: !_showImage,
                            child: (_value == 6)
                                ? Image.asset(
                                    "assets/download6.jpeg",
                                    height: 30.0,
                                    width: 30.0,
                                  )
                                : (_value == 5)
                                    ? Image.asset(
                                        "assets/download5.jpeg",
                                        height: 30.0,
                                        width: 30.0,
                                      )
                                    : (_value == 4)
                                        ? Image.asset(
                                            "assets/download4.jpeg",
                                            height: 30.0,
                                            width: 30.0,
                                          )
                                        : (_value == 3)
                                            ? Image.asset(
                                                "assets/download3.jpeg",
                                                height: 30.0,
                                                width: 30.0,
                                              )
                                            : (_value == 2)
                                                ? Image.asset(
                                                    "assets/images2.jpeg",
                                                    height: 30.0,
                                                    width: 30.0,
                                                  )
                                                : Image.asset(
                                                    "assets/images1.png",
                                                    height: 30.0,
                                                    width: 30.0,
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
                            EdgeInsets.only(left: 5.0, right: 20.0, top: 15.0),
                        // decoration: BoxDecoration(
                        //     border: Border.all(width: 3.0, color: Colors.black)),
                        // color: Colors.blue,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Container(
                                height: 20.0,
                                width: 50.0,
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 5.0, vertical: 3.0),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text(
                                  'Start',
                                  style: TextStyle(color: Colors.white),
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
                                      color: Colors.yellow),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Container(
                                  height: 30.0,
                                  width: 30.0,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.lightBlueAccent),
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
                            EdgeInsets.only(top: 1.h, left: 15.0, right: 5.0),
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
                        padding: EdgeInsets.only(top: 1.h, left: 2.w),
                        // height: 120,
                        // width:100,
                        // decoration: BoxDecoration(
                        //   border:Border.all(color:Colors.black),
                        //   // color: Colors.blue,
                        //   shape: BoxShape.rectangle,
                        // ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                padding: EdgeInsets.only(left: 9.w),
                                alignment: Alignment.centerRight,
                                child: (_value == 6)
                                    ? Image.asset(
                                        "assets/download6.jpeg",
                                        height: 30.0,
                                        width: 30.0,
                                      )
                                    : (_value == 5)
                                        ? Image.asset(
                                            "assets/download5.jpeg",
                                            height: 30.0,
                                            width: 30.0,
                                          )
                                        : (_value == 4)
                                            ? Image.asset(
                                                "assets/download4.jpeg",
                                                height: 30.0,
                                                width: 30.0,
                                              )
                                            : (_value == 3)
                                                ? Image.asset(
                                                    "assets/download3.jpeg",
                                                    height: 30.0,
                                                    width: 30.0,
                                                  )
                                                : (_value == 2)
                                                    ? Image.asset(
                                                        "assets/images2.jpeg",
                                                        height: 30.0,
                                                        width: 30.0,
                                                      )
                                                    : Image.asset(
                                                        "assets/images1.png",
                                                        height: 30.0,
                                                        width: 30.0,
                                                      )),
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
                              child: Align(
                                alignment: Alignment.center,
                                child: Text("Roll again"),
                              ),
                            ),
                            Container(
                                padding: EdgeInsets.only(left: 0.0),
                                // alignment: Alignment.topLeft,
                                child: (_value == 6)
                                    ? Image.asset(
                                        "assets/download6.jpeg",
                                        height: 30.0,
                                        width: 30.0,
                                      )
                                    : (_value == 5)
                                        ? Image.asset(
                                            "assets/download5.jpeg",
                                            height: 30.0,
                                            width: 30.0,
                                          )
                                        : (_value == 4)
                                            ? Image.asset(
                                                "assets/download4.jpeg",
                                                height: 30.0,
                                                width: 30.0,
                                              )
                                            : (_value == 3)
                                                ? Image.asset(
                                                    "assets/download3.jpeg",
                                                    height: 30.0,
                                                    width: 30.0,
                                                  )
                                                : (_value == 2)
                                                    ? Image.asset(
                                                        "assets/images2.jpeg",
                                                        height: 30.0,
                                                        width: 30.0,
                                                      )
                                                    : Image.asset(
                                                        "assets/images1.png",
                                                        height: 30.0,
                                                        width: 30.0,
                                                      ))
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
          ],
        ));
  }
}
