import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class JigsawClipper1 extends CustomPainter{
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width =30.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center =  Offset(width+width*0.055,height*0.6);
    var center2 = Offset(width*0.4,height+height*0.08);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    var startPoint = Offset(width+width*0.001, 0.0);
    var endPoint = Offset(width+width*0.001, height*0.5);
    canvas.drawLine(startPoint, endPoint, linePaint);
    var startPoint1 = Offset(width+width*0.001, height*0.7);
    var endPoint1 = Offset(width+width*0.001, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height);
    var endPoint2 = Offset(width*0.35, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.45, height);
    var endPoint3 = Offset(width*0.8, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper2 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.08,height*0.6);
    var center2 = Offset(width+width*0.08,height*0.6);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height*0.5);
    canvas.drawLine(startPoint, endPoint, linePaint);
    var startPoint1 = Offset(width, height*0.7);
    var endPoint1 = Offset(width, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, 0.0);
    var endPoint2 = Offset(width*0.0, height*0.5);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.0, height*0.7);
    var endPoint3 = Offset(width*0.0, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -3*pi/4, // Start angle
     3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2,  // Sweep angle
      false, // Use center
      paint,
    );
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper3 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width+width*0.08,height*0.6);
    var center2 = Offset(width*0.08,height*0.6);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height*0.5);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2,  // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width, height*0.7);
    var endPoint1 = Offset(width, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height*0.0);
    var endPoint2 = Offset(width*0.0, height*0.5);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.0, height*0.7);
    var endPoint3 = Offset(width*0.0, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2,  // Sweep angle
      false, // Use center
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper4 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 30.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.7,height+8);
    var center2 = Offset(width*0.055,height*0.6);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -pi/4, // Start angle
      3*pi/2,// , // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2,  // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.33, height+0.5);
    var endPoint1 = Offset(width*0.65, height+0.5);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.75, height+0.5);
    var endPoint2 = Offset(width, height+0.5);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint4 = Offset(width*0.0, height*0.0);
    var endPoint4 = Offset(width*0.0, height*0.5);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
    var startPoint3 = Offset(width*0.0, height*0.7);
    var endPoint3 = Offset(width*0.0, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper5 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height*0.91);
    var center2 = Offset(width*0.55,height*0.1);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/4, // Start angle
      3*pi/2,// , // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.52, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.67, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*00, height*0.01);
    var endPoint3 = Offset(width*0.47, height*0.01);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width*0.63, height*0.01);
    var endPoint4 = Offset(width, height*0.01);
    canvas.drawLine(startPoint4, endPoint4, linePaint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper6 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height+7);
    var center2 = Offset(width*0.6,height*0.0-height*0.09);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.52, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.0, height*0.0);
    var endPoint3 = Offset(width*0.52, height*0.0);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width*0.67, height*0.0);
    var endPoint4 = Offset(width, height*0.0);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper7 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height*0.91);
    var center2 = Offset(width*0.6,height*0.09);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );

    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.51, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.0, height*0.0);
    var endPoint3 = Offset(width*0.51,  height*0.0);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width*0.68,  height*0.0);
    var endPoint4 = Offset(width,  height*0.0);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper8 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 30.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.0-7.8,height*0.5);
    var center2 = Offset(width*0.0,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.0, height*0.43);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height*0.58);
    var endPoint2 = Offset(width*0.0, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper9 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 15.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.0-7.5,height*0.5);
    var center2 = Offset(width*0.87,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.0, height*0.43);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height*0.58);
    var endPoint2 = Offset(width*0.0, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width, height*0.0);
    var endPoint3 = Offset(width, height*0.43);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width, height*0.58);
    var endPoint4 = Offset(width, height);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class JigsawClipper10 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 25.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.06,height*0.5);
    var center2 = Offset(width*0.93,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.0, height*0.4);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height*0.58);
    var endPoint2 = Offset(width*0.0, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width, height*0.0);
    var endPoint3 = Offset(width, height*0.4);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width, height*0.6);
    var endPoint4 = Offset(width, height);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper11 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 30.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.4,height*0.0 -7);
    var center2 = Offset(width+width*0.05,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.35, height*0.0);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.45, height*0.0);
    var endPoint2 = Offset(width, height*0.0);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width, height*0.0);
    var endPoint3 = Offset(width, height*0.4);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    var startPoint4 = Offset(width, height*0.6);
    var endPoint4 = Offset(width, height);
    canvas.drawLine(startPoint4, endPoint4, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper12 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=20.w;
    double width = 20.w;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.5,height*0.12);
    var center2 = Offset(width*0.6,height*0.91);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    var startPoint = Offset(0.0,height*0.2);
    var endPoint = Offset(width*0.42, height*0.2);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.58, height*0.2);
    var endPoint1 = Offset(width, height*0.2);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.0, height);
    var endPoint3 = Offset(width*0.5, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper13 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height = 30.w;
    double width = 20.w;
    var paint = Paint();
    paint.color = Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width * 0.5, height * 0.0 - height * 0.06);
    var center2 = Offset(width * 0.5, height * 0.75);
    // var linePaint = Paint()
    //   ..color = Colors.white
    //   ..strokeWidth = 1;
    //
    // var startPoint = Offset(0.0, height * 0.0);
    // var endPoint = Offset(width * 0.42, height * 0.0);
    // canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi / 4, // Start angle
      -3 * pi / 2, // Sweep angle
      false, // Use center
      paint,
    );
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      pi / 4, // Start angle
      -3 * pi / 2, // Sweep angle
      false, // Use center
      paint,
    );
    // var startPoint1 = Offset(width * 0.57, height * 0.0);
    // var endPoint1 = Offset(width, height * 0.0);
    // canvas.drawLine(startPoint1, endPoint1, linePaint);
    // var startPoint2 = Offset(width * 0.57, height);
    // var endPoint2 = Offset(width, height);
    // canvas.drawLine(startPoint2, endPoint2, linePaint);
    // var startPoint3 = Offset(width * 0.57, height);
    // var endPoint3 = Offset(width, height);
    // canvas.drawLine(startPoint3, endPoint3, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
  class JigsawClipper14 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
  double height=20.w;
  double width = 20.w;
  var paint = Paint();
  paint.color =  Colors.black;
  paint.style = PaintingStyle.stroke;
  paint.strokeWidth = 1;
  var center = Offset(width*0.5,height*0.91);
  var center2 = Offset(width*0.6,height*0.085);
  var linePaint = Paint()
  ..color = Colors.black
  ..strokeWidth = 1;

  var startPoint = Offset(width, 0.0);
  var endPoint = Offset(width, height);
  canvas.drawLine(startPoint, endPoint, linePaint);
  canvas.drawArc(
  Rect.fromCircle(center: center2, radius: 10),
  -pi/4, // Start angle
  3*pi/2,// , // Sweep angle
  false, // Use center
  paint,
  );
  canvas.drawArc(
  Rect.fromCircle(center: center, radius: 10),
  pi/4, // Start angle
  -3*pi/2, // Sweep angle
  false, // Use center
  paint,
  );
  var startPoint1 = Offset(width*0.0, height);
  var endPoint1 = Offset(width*0.42, height);
  canvas.drawLine(startPoint1, endPoint1, linePaint);
  var startPoint2 = Offset(width*0.57, height);
  var endPoint2 = Offset(width, height);
  canvas.drawLine(startPoint2, endPoint2, linePaint);
  var startPoint3 = Offset(width*00, height*0.0);
  var endPoint3 = Offset(width*0.52, height*0.0);
  canvas.drawLine(startPoint3, endPoint3, linePaint);
  var startPoint4 = Offset(width*0.68, height*0.0);
  var endPoint4 = Offset(width, height*0.0);
  canvas.drawLine(startPoint4, endPoint4, linePaint);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
  return false;
  }
  }




