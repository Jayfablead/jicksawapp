import 'dart:math';
import 'package:flutter/material.dart';
class JigsawClipper1 extends CustomPainter{


  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 140.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.75,height*0.5);
    var center2 = Offset(width*0.5,height+7);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;
    var startPoint = Offset(width*0.8, 0.0);
    var endPoint = Offset(width*0.8, height*0.42);
    canvas.drawLine(startPoint, endPoint, linePaint);
    var startPoint1 = Offset(width*0.8, height*0.58);
    var endPoint1 = Offset(width*0.8, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height);
    var endPoint2 = Offset(width*0.44, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.56, height);
    var endPoint3 = Offset(width*0.8, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/4, // Start angle
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
    double height=100.0;
    double width = 90.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.8,height*0.5);
    var center2 = Offset(width*0.0+7.2,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width*0.8, 0.0);
    var endPoint = Offset(width*0.8, height*0.42);
    canvas.drawLine(startPoint, endPoint, linePaint);
    var startPoint1 = Offset(width*0.8, height*0.58);
    var endPoint1 = Offset(width*0.8, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    // var startPoint2 = Offset(width*0.0, height);
    // var endPoint2 = Offset(width*0.8, height);
    // canvas.drawLine(startPoint2, endPoint2, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
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
class JigsawClipper3 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 80.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.89,height*0.5);
    var center2 = Offset(width*0.0+7.2,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(width*0.8, 0.0);
    var endPoint = Offset(width*0.8, height*0.42);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -3*pi/4, // Start angle
      3*pi/2,  // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.8, height*0.58);
    var endPoint1 = Offset(width*0.8, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);

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
    double height=100.0;
    double width = 120.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height+8);
    var center2 = Offset(width*0.0,height*0.5);
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
    var startPoint1 = Offset(width*0.15, height);
    var endPoint1 = Offset(width*0.53, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.67, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper5 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=70.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height*0.9);
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
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.51, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper6 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=50.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height+7);
    var center2 = Offset(width*0.0,height*0.5);
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
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.54, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper7 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=40.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.6,height*0.84);
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
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.51, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.68, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper8 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 120.0;
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
    double height=100.0;
    double width = 40.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.0-7.5,height*0.5);
    var center2 = Offset(width*0.0,height*0.5);
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

class JigsawClipper10 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 40.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.18,height*0.5);
    var center2 = Offset(width*0.0,height*0.5);
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
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.0, height*0.42);
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
class JigsawClipper11 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 140.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.5,height*0.0 -8);
    var center2 = Offset(width*0.0,height*0.5);
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
    var startPoint1 = Offset(width*0.0, height*0.0);
    var endPoint1 = Offset(width*0.46, height*0.0);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.54, height*0.0);
    var endPoint2 = Offset(width, height*0.0);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper12 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=40.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.5,height*0.05);
    var center2 = Offset(width*0.0,height*0.5);
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
    var startPoint1 = Offset(width*0.58, height*0.2);
    var endPoint1 = Offset(width, height*0.2);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper13 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=90.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.black;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 1;
    var center = Offset(width*0.5,height*0.11);
    var center2 = Offset(width*0.0,height*0.5);
    var linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1;

    var startPoint = Offset(0.0,height*0.2);
    var endPoint = Offset(width*0.44, height*0.2);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      pi/4, // Start angle
      -3*pi/2, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.57, height*0.2);
    var endPoint1 = Offset(width, height*0.2);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}



