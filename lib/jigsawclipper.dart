import 'dart:math';
import 'package:flutter/material.dart';
class JigsawClipper1 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 120.0;
    var paint = Paint();
    paint.color =  Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    var center = Offset(width*0.8,height*0.5);
    var center2 = Offset(width*0.5,height);
    var linePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;

    var startPoint = Offset(width*0.8, 0.0);
    var endPoint = Offset(width*0.8, height*0.4);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -pi / 2, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.8, height*0.6);
    var endPoint1 = Offset(width*0.8, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height);
    var endPoint2 = Offset(width*0.4, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);
    var startPoint3 = Offset(width*0.6, height);
    var endPoint3 = Offset(width*0.8, height);
    canvas.drawLine(startPoint3, endPoint3, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      0, // Start angle
      pi, // Sweep angle
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
    paint.color =  Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    var center = Offset(width*0.8,height*0.5);
    var center2 = Offset(width*0.0,height*0.5);
    var linePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;

    var startPoint = Offset(width*0.8, 0.0);
    var endPoint = Offset(width*0.8, height*0.4);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      -pi / 2, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.8, height*0.6);
    var endPoint1 = Offset(width*0.8, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.0, height);
    var endPoint2 = Offset(width*0.8, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);

    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/2, // Start angle
     pi, // Sweep angle
      false, // Use center
      paint,
    );

    // var path = Path();
    // path.moveTo(0.0, 0.0);
    // path.lineTo(width * 0.8, 0.0);
    // path.lineTo(width*0.8, height * 0.2);
    // path.lineTo(width*0.0, height * 0.2);
    //
    // // path.lineTo(width * 0.8,height * 0.2);
    // path.lineTo(width*0.8, height * 0.4);
    // path.lineTo(width*0.0, height * 0.4);
    // path.addArc(Rect.fromCircle(center: Offset(width*0.8, height * 0.3), radius: 20), pi/2 , 180 *pi/2);
    // path.lineTo(width*0.8, height * 0.4);
    // path.lineTo(width*0.8, height * 0.6);
    // path.lineTo(width*0.0, height * 0.6);
    // path.lineTo(width*0.0, height * 0.4);
    // path.addArc(Rect.fromCircle(center: Offset(width*0.2, height * 0.6), radius: 20), pi/2, 180 *pi/2);
    // canvas.drawPath(path, paint0);

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
    paint.color =  Colors.red;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    var center = Offset(width*0.6,height);
    var center2 = Offset(width*0.0,height*0.5);
    var linePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      0, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.5, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.7, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);

    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/2, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper5 extends CustomPainter {
  void paint(Canvas canvas, Size size) {
    double height=100.0;
    double width = 100.0;
    var paint = Paint();
    paint.color =  Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2;
    var center = Offset(width*0.6,height);
    var center2 = Offset(width*0.0,height*0.5);
    var linePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 3;

    var startPoint = Offset(width, 0.0);
    var endPoint = Offset(width, height);
    canvas.drawLine(startPoint, endPoint, linePaint);
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: 10),
      0, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
    var startPoint1 = Offset(width*0.0, height);
    var endPoint1 = Offset(width*0.5, height);
    canvas.drawLine(startPoint1, endPoint1, linePaint);
    var startPoint2 = Offset(width*0.7, height);
    var endPoint2 = Offset(width, height);
    canvas.drawLine(startPoint2, endPoint2, linePaint);

    canvas.drawArc(
      Rect.fromCircle(center: center2, radius: 10),
      -pi/2, // Start angle
      pi, // Sweep angle
      false, // Use center
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
class JigsawClipper8 extends CustomClipper<Path> {
  @override
  // Size size1 = Size(200, 300);
  Path getClip(Size size) {
    double width =120.0;
    double  height =200.0;
    var path = Path();
    path.moveTo(width *0.2,height *0.2);
    path.lineTo(width ,height *0.2 );
    path.lineTo(width ,height*0.8 );
    path.lineTo(width * 0.2,height*0.8);
    path.addArc(Rect.fromCircle(center: Offset(width*0.7, height * 0.2), radius: 20), pi , 180 *pi);
    path.addArc(Rect.fromCircle(center: Offset(width*0.2, height * 0.4), radius: 20), pi , 180 *pi);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
// class JigsawClipper4 extends CustomClipper<Path> {
//   @override
//   // Size size1 = Size(200, 300);
//   Path getClip(Size size) {
//     double width =120.0;
//     double  height =180.0;
//     var path = Path();
//     path.moveTo(width *0.2,0.0);
//     path.lineTo(width ,0.0 );
//     path.lineTo(width ,height*0.6);
//     path.lineTo(width * 0.2,height*0.6);
//     path.addArc(Rect.fromCircle(center: Offset(width*0.7, height * 0.6), radius: 20), pi , 180 *pi);
//     path.addArc(Rect.fromCircle(center: Offset(width*0.2, height * 0.4), radius: 20), pi , 180 *pi);
//     return path;
//   }
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
// }
class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint();
      paint0.color =  Colors.red;
    paint0.style = PaintingStyle.stroke;
    paint0.strokeWidth = 1;


    Path path0 = Path();
    path0.moveTo(size.width*0.4387500,size.height*0.2020000);
    path0.quadraticBezierTo(size.width*0.5784375,size.height*0.2005000,size.width*0.6250000,size.height*0.2000000);
    path0.lineTo(size.width*0.6262500,size.height*0.2980000);
    path0.quadraticBezierTo(size.width*0.6590750,size.height*0.3159800,size.width*0.6669500,size.height*0.3360200);
    path0.quadraticBezierTo(size.width*0.6681750,size.height*0.3765800,size.width*0.6237500,size.height*0.3940000);
    path0.lineTo(size.width*0.6262500,size.height*0.4980000);
    path0.lineTo(size.width*0.4387500,size.height*0.5020000);
    path0.lineTo(size.width*0.4375000,size.height*0.4040000);
    path0.quadraticBezierTo(size.width*0.4749000,size.height*0.3603600,size.width*0.4594500,size.height*0.3474800);
    path0.quadraticBezierTo(size.width*0.4745875,size.height*0.3333600,size.width*0.4362500,size.height*0.2960000);
    path0.quadraticBezierTo(size.width*0.4368750,size.height*0.2725000,size.width*0.4387500,size.height*0.2020000);
    path0.close();
    canvas.drawPath(path0, paint0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
