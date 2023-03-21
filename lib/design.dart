

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

    return


      Scaffold(
        body: Stack(
          children: [
            Container(
              height: 360,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.rectangle,
              ),

            ),
            Positioned(
              top: 100.0,
              left: 100.0,
              right: 100.0,
              bottom: 100.0,
              child:Container(
              height: 160,
              width:160,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
              ),
            ), ),

            //block1
            Positioned(
              top: 0.0,
              left: 0.0,
              // right: 270.0,
              // bottom: 260.0,
              child:CustomPaint(
                size: Size(300,400), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: JigsawClipper1(),
                child:
                Container(
                  decoration:BoxDecoration(
                      border: Border.all(width: 3.0,color: Colors.black)
                  ),
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
                          padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 3.0),
                          decoration: BoxDecoration(
                              color: Colors.black,
                            borderRadius: BorderRadius.circular(20.0)
                          ),
                          child: Text(
                            'Start',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.lightBlueAccent
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )


            ),
            // block2
            Positioned(
              top: 0.0,
              left: 96.0,
              // right: 270.0,
              bottom: 260.0,
              child:CustomPaint(
                size: Size(200,300),
                painter:JigsawClipper2(),
              )),
            //block3
            Positioned(
              top: 0.0,
              left: 168.8,
              // right: 270.0,
              bottom: 260.0,
              child:CustomPaint(
                size: Size(200,300),
                painter:JigsawClipper2(),
              )),
            // block4
            Positioned(
              top: 0.0,
              left: 240.0,
              right: 0.0,
              // bottom: 260.0,
              child: CustomPaint(
                  painter: JigsawClipper4(),
                  child: Container(
                    padding: EdgeInsets.all (5.0),
                    alignment: Alignment.center,
                    // height: 100,
                    // width:80,
                    decoration: BoxDecoration(
                      border:Border.all(color:Colors.black),
                      // color: Colors.green,
                      // shape: BoxShape.rectangle,
                    ),
                    child: Center(child: Text("Answer a Question to pickup a pieace")),
                  ),
                ),
              ),


            //block 5
            Positioned(
              bottom: 0.0,
              left:260.0,
              right: 0.0,
              top: 220.0,
              child:CustomPaint(
                painter: JigsawClipper5(),
              ) ),
            //block10
            // Positioned(
            //   bottom: 0.0,
            //   left: 120.0,
            //   // right: 270.0,
            //   top: 260.0,
            //   child:Container(
            //     height: 100,
            //     width:80,
            //     decoration: BoxDecoration(
            //       border:Border.all(color: Colors.black),
            //       // color: Colors.orangeAccent,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),
            // block9
            // Positioned(
            //   bottom: 0.0,
            //   left: 200.0,
            //   // right: 270.0,
            //   top: 260.0,
            //   child:Container(
            //     height: 100,
            //     width:80,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.lightGreen,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),
            // block8
            // Positioned(
            //   bottom: 0.0,
            //   // left: 280.0,
            //   right: 0.0,
            //   top: 220.0,
            //   child:JigsawContainer8(
            //     width: 120.0,
            //     height: 180.0,
            //     child:
            //     Container(
            //       padding: EdgeInsets.all(5.0),
            //       height: 100,
            //       width:80,
            //       decoration: BoxDecoration(
            //         border:Border.all(color:Colors.black),
            //         color: Colors.green,
            //         shape: BoxShape.rectangle,
            //       ),
            //       child: Text("Answer a Question to pickup a pieace"),
            //     ),
            //   )
            //
            //
            // ),

            // Positioned(
            //   bottom:240.0,
            //   left: 0.0,
            //   // right: 270.0,
            //   top: 100.0,
            //   child:Container(
            //     height: 20,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.green,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),

            // Positioned(
            //   // bottom:210.0,
            //   left: 0.0,
            //   // right: 270.0,
            //   top: 120.0,
            //   child:Container(
            //     height: 120,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.blue,
            //       shape: BoxShape.rectangle,
            //     ),
            //     child:Column(
            //       children: [
            //         Align(
            //           alignment: Alignment.centerRight,
            //           child: Image.asset("assets/download6.jpeg",height: 50.0,width: 50.0,),
            //         ),
            //         Align(
            //           alignment: Alignment.center,
            //           child: Text("Roll again"),
            //         ),
            //         Align(
            //           alignment: Alignment.centerLeft,
            //           child: Image.asset("assets/download6.jpeg",height: 50.0,width: 50.0,),
            //         )
            //       ],
            //     )
            //   ), ),

            // Positioned(
            //   // bottom:210.0,
            //   left: 0.0,
            //   // right: 270.0,
            //   top: 240.0,
            //   child:Container(
            //     height: 20,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       color: Colors.brown,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),
            // Positioned(
            //   bottom:210.0,
            //   left: 260.0,
            //   // right: 270.0,
            //   top: 100.0,
            //   child:Container(
            //     height: 50,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.green,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),
            // Positioned(
            //   // bottom:210.0,
            //   left: 260.0,
            //   // right: 270.0,
            //   top: 150.0,
            //   child:Container(
            //     height: 50,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.blue,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), ),
            // Positioned(
            //   // bottom:210.0,
            //   left: 260.0,
            //   // right: 270.0,
            //   top: 200.0,
            //   child:Container(
            //     height: 60,
            //     width:100,
            //     decoration: BoxDecoration(
            //       border:Border.all(color:Colors.black),
            //       // color: Colors.brown,
            //       shape: BoxShape.rectangle,
            //     ),
            //   ), )
          ],
        ),
      );
  }

}
