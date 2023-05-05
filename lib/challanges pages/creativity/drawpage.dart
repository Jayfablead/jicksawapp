// ignore_for_file: unnecessary_null_comparison

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../const widget.dart';

class DrawingBoard {
  Offset points;
  Paint brush;

  DrawingBoard({required this.brush, required this.points});
}

class DrawingPage extends StatefulWidget {
  const DrawingPage({Key? key}) : super(key: key);

  @override
  _DrawingPageState createState() => _DrawingPageState();
}

class _DrawingPageState extends State<DrawingPage> {
  List<DrawingBoard> points = [];
  late Color brushColor = Colors.white;
  late double brushStrokeWidth = 5.0;

  @override
  void initState() {
    brushColor = Colors.white;
    brushStrokeWidth = 5.0;
    super.initState();
  }

  void changeBrushColor() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select any color'),
          content: SizedBox(
            height: 300,
            child: BlockPicker(
              pickerColor: brushColor,
              onColorChanged: (color) {
                setState(
                      () {
                    brushColor = color;
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pop();
                });
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  void changeBrushSize() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Select brush size'),
          content: SizedBox(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 1;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 1,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 2;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 2,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 3;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 3,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 4;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 4,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 5;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 5,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 6;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 6,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 7;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 7,
                    color: Colors.white,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(
                          () {
                        brushStrokeWidth = 8;
                      },
                    );
                  },
                  child: Container(
                    width: 150,
                    height: 8,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(
                      () {
                    Navigator.of(context).pop();
                  },
                );
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff232323),
                  Color(0xff4f4f4f),
                ],
              ),
            ),
          ),
          Center(
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: primary,
                          )),
                      Text(
                        'Creativity Challange',
                        style: primarytxt1,
                      ),
                     IconButton(onPressed: (){}, icon: Icon(Icons.done,color: primary))
                    ],
                  ),
                  SizedBox(
                    height: 1.5.h,
                  ),SizedBox(
                      width: 90.w,
                      child: Text(
                        'Question :',
                        textAlign: TextAlign.justify,
                        style: primarytxt,
                      )),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                      width: 90.w,
                      child: Text(
                        'Draw Something Beautiful.',
                        textAlign: TextAlign.justify,
                        style: primarytxtbig,
                      )),SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.90,
                    height: MediaQuery.of(context).size.height * 0.65,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff383838),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff3d3c3c),
                          blurRadius: 7.0,
                          spreadRadius: 0.7,
                          offset: Offset(7, 7),
                        ),
                        BoxShadow(
                          color: Color(0xff3d3c3c),
                          blurRadius: 7.0,
                          spreadRadius: 0.7,
                          offset: Offset(-7, -7),
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onPanDown: (details) {
                        setState(
                              () {
                            points.add(
                              DrawingBoard(
                                points: details.localPosition,
                                brush: Paint()
                                  ..strokeCap = StrokeCap.round
                                  ..color = brushColor
                                  ..isAntiAlias = true
                                  ..strokeWidth = brushStrokeWidth,
                              ),
                            );
                          },
                        );
                      },
                      onPanUpdate: (details) {
                        setState(
                              () {
                            points.add(
                              DrawingBoard(
                                points: details.localPosition,
                                brush: Paint()
                                  ..strokeCap = StrokeCap.round
                                  ..color = brushColor
                                  ..isAntiAlias = true
                                  ..strokeWidth = brushStrokeWidth,
                              ),
                            );
                          },
                        );
                      },
                      onPanEnd: (details) {
                        setState(
                              () {
                            points.add(
                              DrawingBoard(
                                brush: Paint()
                                  ..strokeCap = StrokeCap.round
                                  ..strokeWidth = brushStrokeWidth
                                  ..color = brushColor
                                  ..isAntiAlias = true,
                                points: Offset.infinite,
                              ),
                            );
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CustomPaint(
                          painter: ScreenPainter(
                            points: points,
                            brushColor: brushColor,
                            brushStrokeWidth: brushStrokeWidth,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xff383636),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff4b4747),
                          blurRadius: 7.0,
                          spreadRadius: 0.7,
                          offset: Offset(7, 7),
                        ),
                        BoxShadow(
                          color: Color(0xff2a2828),
                          blurRadius: 7.0,
                          spreadRadius: 0.7,
                          offset: Offset(-7, -7),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              changeBrushColor();
                            });
                          },
                          child: Icon(
                            Icons.circle,
                            color: brushColor,
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              setState(
                                    () {
                                  changeBrushSize();
                                },
                              );
                            },
                            child: Container(
                              height: brushStrokeWidth,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              points.clear();
                            });
                          },
                          child: const Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenPainter extends CustomPainter {
  List<DrawingBoard> points;
  Color brushColor;
  double brushStrokeWidth;

  ScreenPainter(
      {required this.points,
        required this.brushColor,
        required this.brushStrokeWidth});

  @override
  void paint(Canvas canvas, Size size) {
    Paint background = Paint()..color = const Color(0xff171717);
    Rect rect = Rect.fromLTWH(0, 0,90.w, 75.h);
    canvas.drawRect(rect, background);

    for (int x = 0; x < points.length - 1; x++) {
      if (points[x] != null && points[x + 1] != null) {
        Paint brush = points[x].brush;
        canvas.drawLine(points[x].points, points[x + 1].points, brush);
      } else if (points[x] != null && points[x + 1] == null) {
        Paint brush = points[x].brush;
        canvas.drawPoints(PointMode.points, [points[x].points], brush);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
