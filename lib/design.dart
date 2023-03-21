import 'package:flutter/material.dart';
import 'package:jicksaw/jigsawclipper.dart';
import 'package:jicksaw/jigsawcontainer.dart';

class design extends StatefulWidget {
  const design({Key? key}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> {
  var path = Path();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: JigsawClipper1(),
    );
    //   Scaffold(
    //   body: Stack(
    //     children: [
    //       Container(
    //         height: 360,
    //         width: 360,
    //         decoration: BoxDecoration(
    //           border: Border.all(color: Colors.black),
    //           color: Colors.white,
    //           shape: BoxShape.rectangle,
    //         ),
    //       ),
    //       Positioned(
    //         top: 100.0,
    //         left: 100.0,
    //         right: 100.0,
    //         bottom: 100.0,
    //         child: Container(
    //           height: 160,
    //           width: 160,
    //           decoration: BoxDecoration(
    //             border: Border.all(color: Colors.black),
    //             color: Colors.white,
    //             shape: BoxShape.rectangle,
    //           ),
    //         ),
    //       ),
    //
    //       //block1
    //       Positioned(
    //           top: 0.0,
    //           left: 0.0,
    //           // right: 270.0,
    //           // bottom: 260.0,
    //           child: CustomPaint(
    //             size: Size(300,
    //                 400), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    //             painter: JigsawClipper1(),
    //             child: Container(
    //               padding: EdgeInsets.only(left: 5.0,right: 20.0,top: 15.0),
    //               // decoration: BoxDecoration(
    //               //     border: Border.all(width: 3.0, color: Colors.black)),
    //               // color: Colors.blue,
    //               child: Row(
    //                 crossAxisAlignment: CrossAxisAlignment.center,
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: [
    //                   Center(
    //                     child: Container(
    //                       height: 20.0,
    //                       width: 50.0,
    //                       alignment: Alignment.center,
    //                       padding: EdgeInsets.symmetric(
    //                           horizontal: 5.0, vertical: 3.0),
    //                       decoration: BoxDecoration(
    //                           color: Colors.black,
    //                           borderRadius: BorderRadius.circular(20.0)),
    //                       child: Text(
    //                         'Start',
    //                         style: TextStyle(color: Colors.white),
    //                       ),
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 10.0,
    //                   ),
    //                   Column(
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     children: [
    //                       Container(
    //                         height: 30.0,
    //                         width: 30.0,
    //                         decoration: BoxDecoration(
    //                             shape: BoxShape.circle, color: Colors.yellow),
    //                       ),
    //                       SizedBox(
    //                         height: 10.0,
    //                       ),
    //                       Container(
    //                         height: 30.0,
    //                         width: 30.0,
    //                         decoration: BoxDecoration(
    //                             shape: BoxShape.circle,
    //                             color: Colors.lightBlueAccent),
    //                       )
    //                     ],
    //                   )
    //                 ],
    //               ),
    //             ),
    //           )),
    //       // block2
    //       Positioned(
    //           top: 0.0,
    //           left: 112.0,
    //           // right: 270.0,
    //           bottom: 260.0,
    //           child: CustomPaint(
    //             size: Size(200, 300),
    //             painter: JigsawClipper2(),
    //           )),
    //       //block3
    //       Positioned(
    //           top: 0.0,
    //           left: 182.8,
    //           // right: 270.0,
    //           bottom: 260.0,
    //           child: CustomPaint(
    //             size: Size(200, 300),
    //             painter: JigsawClipper3(),
    //           )),
    //       // block4
    //       Positioned(
    //         top: 0.0,
    //         left: 240.0,
    //         right: 0.0,
    //         // bottom: 260.0,
    //         child: CustomPaint(
    //           painter: JigsawClipper4(),
    //           child: Container(
    //             padding: EdgeInsets.only(top:20.0,left:20.0,right: 5.0),
    //             alignment: Alignment.center,
    //             // height: 100,
    //             // width:80,
    //             // decoration: BoxDecoration(
    //             //   border: Border.all(color: Colors.black),
    //             //   // color: Colors.green,
    //             //   // shape: BoxShape.rectangle,
    //             // ),
    //             child:
    //                 Center(child: Text("Answer a Question to pickup a pieace",textAlign: TextAlign.center,)),
    //           ),
    //         ),
    //       ),
    //
    //       //block 5
    //       Positioned(
    //           // bottom: 0.0,
    //           left: 260.0,
    //           right: 0.0,
    //           top: 100.0,
    //           child: CustomPaint(
    //             painter: JigsawClipper5(),
    //           )),
    //       //block6
    //       Positioned(
    //           bottom: 0.0,
    //           left: 260.0,
    //           // right: 270.0,
    //           top: 170.0,
    //           child: CustomPaint(
    //             painter: JigsawClipper6(),
    //           )),
    //       // block7
    //       Positioned(
    //           bottom: 0.0,
    //           left: 260.0,
    //           // right: 270.0,
    //           top: 220.0,
    //           child: CustomPaint(
    //             painter: JigsawClipper7(),
    //           )),
    //       // block8
    //       Positioned(
    //         bottom: 0.0,
    //         left: 240.0,
    //         right: 0.0,
    //         top: 260.0,
    //         child: CustomPaint(
    //           painter: JigsawClipper8(),
    //           child:  Container(
    //             padding: EdgeInsets.only(top:15.0,left:20.0,right: 5.0),
    //             alignment: Alignment.center,
    //             // height: 100,
    //             // width:80,
    //             // decoration: BoxDecoration(
    //             //   border: Border.all(color: Colors.black),
    //             //   // color: Colors.green,
    //             //   // shape: BoxShape.rectangle,
    //             // ),
    //             child:
    //             Center(child: Text("Answer a Question to pickup a pieace",textAlign: TextAlign.center,)),
    //           ),
    //         ),
    //       ),
    //
    //       //
    //       // ),
    //      // block9
    //       Positioned(
    //         bottom:0.0,
    //         left: 180.0,
    //         // right: 270.0,
    //         top: 260.0,
    //         child:CustomPaint(
    //           painter: JigsawClipper9(),
    //           child: Container(
    //             // height: 20,
    //             // width:100,
    //             // decoration: BoxDecoration(
    //             //   border:Border.all(color:Colors.black),
    //             //   // color: Colors.green,
    //             //   shape: BoxShape.rectangle,
    //             // ),
    //           ),
    //         ), ),
    //           //block10
    //       Positioned(
    //         bottom:0.0,
    //         left: 140.0,
    //         right: 270.0,
    //         top: 260.0,
    //         child:CustomPaint(
    //           painter: JigsawClipper10(),
    //           child: Container(
    //             // height: 20,
    //             // width:100,
    //             // decoration: BoxDecoration(
    //             //   border:Border.all(color:Colors.black),
    //             //   // color: Colors.green,
    //             //   shape: BoxShape.rectangle,
    //             // ),
    //           ),
    //         ), ),
    //       //block11
    //       Positioned(
    //         bottom:0.0,
    //         left: 0.0,
    //         right: 240.0,
    //         top: 260.0,
    //         child:CustomPaint(
    //           painter: JigsawClipper11(),
    //           child:  Container(
    //             padding: EdgeInsets.only(top:15.0,left:20.0,right: 5.0),
    //             alignment: Alignment.center,
    //             // height: 100,
    //             // width:80,
    //             // decoration: BoxDecoration(
    //             //   border: Border.all(color: Colors.black),
    //             //   // color: Colors.green,
    //             //   // shape: BoxShape.rectangle,
    //             // ),
    //             child:
    //             Center(child: Text("Answer a Question to pickup a pieace",textAlign: TextAlign.center,)),
    //           )
    //         ), ),
    //       //block12
    //       Positioned(
    //
    //         left: 0.0,
    //         // right: 270.0,
    //         top: 220.0,
    //         child:CustomPaint(
    //           painter: JigsawClipper12(),
    //           child: Container(
    //             // height: 20,
    //             // width:100,
    //             // decoration: BoxDecoration(
    //             //   border:Border.all(color:Colors.black),
    //             //   // color: Colors.green,
    //             //   shape: BoxShape.rectangle,
    //             // ),
    //           ),
    //         ), ),
    //
    //     //block13
    //       Positioned(
    //         // bottom:210.0,
    //         left: 0.0,
    //         // right: 270.0,
    //         top: 120.0,
    //         child:CustomPaint(
    //           painter: JigsawClipper13(),
    //           child: Container(
    //             padding: EdgeInsets.only(top:20.0),
    //             // height: 120,
    //             // width:100,
    //             // decoration: BoxDecoration(
    //             //   border:Border.all(color:Colors.black),
    //             //   // color: Colors.blue,
    //             //   shape: BoxShape.rectangle,
    //             // ),
    //             child:Column(
    //               children: [
    //                 Container(
    //                   padding: EdgeInsets.only(left: 60.0),
    //                   alignment: Alignment.centerRight,
    //                   child: Image.asset("assets/download6.jpeg",height: 30.0,width: 30.0,),
    //                 ),
    //                 Align(
    //                   alignment: Alignment.center,
    //                   child: Text("Roll again"),
    //                 ),
    //                 Align(
    //                   alignment: Alignment.centerLeft,
    //                   child: Image.asset("assets/download6.jpeg",height: 30.0,width: 30.0,),
    //                 )
    //               ],
    //             )
    //           ),
    //         ), ),
    //
    //       // Positioned(
    //       //   // bottom:210.0,
    //       //   left: 0.0,
    //       //   // right: 270.0,
    //       //   top: 240.0,
    //       //   child:Container(
    //       //     height: 20,
    //       //     width:100,
    //       //     decoration: BoxDecoration(
    //       //       border:Border.all(color:Colors.black),
    //       //       color: Colors.brown,
    //       //       shape: BoxShape.rectangle,
    //       //     ),
    //       //   ), ),
    //       // Positioned(
    //       //   bottom:210.0,
    //       //   left: 260.0,
    //       //   // right: 270.0,
    //       //   top: 100.0,
    //       //   child:Container(
    //       //     height: 50,
    //       //     width:100,
    //       //     decoration: BoxDecoration(
    //       //       border:Border.all(color:Colors.black),
    //       //       // color: Colors.green,
    //       //       shape: BoxShape.rectangle,
    //       //     ),
    //       //   ), ),
    //       // Positioned(
    //       //   // bottom:210.0,
    //       //   left: 260.0,
    //       //   // right: 270.0,
    //       //   top: 150.0,
    //       //   child:Container(
    //       //     height: 50,
    //       //     width:100,
    //       //     decoration: BoxDecoration(
    //       //       border:Border.all(color:Colors.black),
    //       //       // color: Colors.blue,
    //       //       shape: BoxShape.rectangle,
    //       //     ),
    //       //   ), ),
    //       // Positioned(
    //       //   // bottom:210.0,
    //       //   left: 260.0,
    //       //   // right: 270.0,
    //       //   top: 200.0,
    //       //   child:Container(
    //       //     height: 60,
    //       //     width:100,
    //       //     decoration: BoxDecoration(
    //       //       border:Border.all(color:Colors.black),
    //       //       // color: Colors.brown,
    //       //       shape: BoxShape.rectangle,
    //       //     ),
    //       //   ), )
    //     ],
    //   ),
    // );
  }
}
