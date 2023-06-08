import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:math' as math;

class JigsawClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.25, height*0.7);
    final center1 = Offset(width*0.75, height*0.35);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = -math.pi / 4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = math.pi*3/2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.3);
    // for vertical
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.7, height*0.4);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.5, height*0.63);
    //for horizontal
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.3, height*0.63);
    path.lineTo(width*0.0, height*0.63);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper2 extends  CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 33.w;
    final path = Path();
    final center = Offset(width*0.07, height*0.35);
    final center1 = Offset(width*0.75, height*0.35);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = -math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = math.pi*3/2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.3);
    // for vertical right
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.7, height*0.4);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.5, height*0.63);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.0, height*0.63);
    path.lineTo(width*0.0, height*0.55);
    //for vertical left
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.0, height*0.45);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 33.w;
    final path = Path();
    final center = Offset(width*0.055, height*0.35);
    final center1 = Offset(width*0.75, height*0.35);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = -math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = math.pi*3/2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.3);
    // for vertical right
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.7, height*0.4);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.5, height*0.63);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.0, height*0.63);
    path.lineTo(width*0.0, height*0.4);
    //for vertical left
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.0, height*0.3);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 43.w;
    final path = Path();
    final center = Offset(width*0.5, height*0.7);
    final center1 = Offset(width*0.04, height*0.35);
    final radius = math.min(width*0.1, height*0.1);

    final startAngle = -math.pi / 4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = -math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = -math.pi*3/2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.63);
    path.lineTo(width*0.5, height*0.63);
    //for horizontal
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.3, height*0.63);
    path.lineTo(width*0.0, height*0.63);
    path.lineTo(width*0.0, height*0.55);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.0, height*0.45);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper5 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.3, height*0.55);
    final center1 = Offset(width*0.3, height*0.076);
    final radius = math.min(width*0.1, height*0.1);

    final startAngle = math.pi / 4; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = -math.pi + math.pi / 4; // 45 degrees in radians
    final sweepAngle1 = -math.pi * 3 / 2; //
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width*0.3, height*0.0);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.5, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.63);
    //for horizontal
    path.lineTo(width*0.5, height*0.63);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.4, height*0.63);
    path.lineTo(width*0.0, height*0.63);

    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper6 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 48.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.3, height*0.685);
    final center1 = Offset(width*0.3,height*0.15);
    final radius = math.min(width*0.1, height*0.1);
    final radius1 = math.min(width*0.101, height*0.101);

    final startAngle = -math.pi / 4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 =  -math.pi * 3 / 2 + math.pi/4; // 45 degrees in radians
    final sweepAngle1 = math.pi * 3 / 2; //
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.2);
    path.lineTo(width*0.35, height*0.2);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.45, height*0.2);
    path.lineTo(width*0.7, height*0.2);
    path.lineTo(width*0.7, height*0.63);
    //for horizontal
    path.lineTo(width*0.6, height*0.63);
    path.arcTo(Rect.fromCircle(center: center, radius: radius1), startAngle, sweepAngle, false);
    path.lineTo(width*0.5, height*0.63);
    path.lineTo(width*0.0, height*0.63);

    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper7 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 43.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.48, height*0.69);
    final center1 = Offset(width*0.47,height*0.2);
    final radius = math.min(width*0.1, height*0.1);

    final startAngle = -math.pi / 4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = -math.pi + math.pi / 4; // 45 degrees in radians
    final sweepAngle1 = -math.pi * 3 / 2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width*0.37, height*0.0);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.35, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.63);
    //for horizontal
    path.lineTo(width*0.5, height*0.63);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.4, height*0.63);
    path.lineTo(width*0.0, height*0.63);

    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper8 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 44.w;
    final path = Path();
    final center = Offset(width*0.13, height*0.35);
    final center1 = Offset(width*0.7,height*0.09);
    final radius = math.min(width*0.1, height*0.1);

    final startAngle = -math.pi/4 ; // 45 degrees in radians
    final sweepAngle = -math.pi*3/2;// 270 degrees in radians
    final startAngle1 = -math.pi + math.pi / 4; // 45 degrees in radians
    final sweepAngle1 = -math.pi * 3 / 2;
    path.moveTo(width*0.19, height*0.0);
    path.lineTo(width*0.19, height*0.0);
    path.lineTo(width*0.64, height*0.0);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.77, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width, height);
    path.lineTo(width*0.18, height);
    path.lineTo(width*0.18, height*0.4);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.18, height*0.3);
    path.lineTo(width*0.18, height*0.0);


    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper9 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 29.w;
    final path = Path();
    final center = Offset(width*0.12, height*0.35);
    final center1 = Offset(width*0.63, height*0.35);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = -math.pi/4 ; // 45 degrees in radians
    final sweepAngle = -math.pi*3/2; // 270 degrees in radians
    final startAngle1 = -math.pi/4 ; // 45 degrees in radians
    final sweepAngle1= -math.pi*3/2;
    path.moveTo(width*0.19, height*0.0);
    path.lineTo(width*0.19, height*0.0);
    path.lineTo(width*0.19, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width, height*0.3);
    // for vertical right
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width, height*0.4);
    path.lineTo(width, height*0.63);
    path.lineTo(width*0.19, height*0.63);

    path.lineTo(width*0.19, height*0.63);
    path.lineTo(width*0.19, height*0.3);
    //for vertical left
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.19, height*0.4);
    path.lineTo(width*0.19,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper10 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 25.5.w;
    final path = Path();
    final center = Offset(width*0.07, height*0.35);
    final center1 = Offset(width*0.91, height*0.35);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = -math.pi/4 ; // 45 degrees in radians
    final sweepAngle = -math.pi*3/2; // 270 degrees in radians
    final startAngle1 = -math.pi/4 ; // 45 degrees in radians
    final sweepAngle1= -math.pi*3/2;
    path.moveTo(width*0.0, height*0.0);
    path.lineTo(width*0.0, height*0.0);
    path.lineTo(width*0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width, height*0.3);
    // for vertical right
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width, height*0.4);
    path.lineTo(width, height);
    path.lineTo(width*0.0, height);
    path.lineTo(width*0.0, height*0.4);
    //for vertical left
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.0, height*0.3);
    path.lineTo(width*0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper11 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 32.w;
    double width = 42.w;
    final path = Path();
    final center = Offset(width*0.24, height*0.13);
    final center1 = Offset(width*0.75, height*0.55);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle =  -math.pi * 3 / 2 + math.pi/4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; /// 270 degrees in radians
    final startAngle1 = math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = math.pi*3/2;
    path.moveTo(0.0, height*0.19);
    path.lineTo(0.0, height*0.19);
    path.lineTo(width*0.3, height*0.19);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.35, height*0.19);

    path.lineTo(width*0.7, height*0.19);
    path.lineTo(width*0.7, height*0.19);

    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.7, height*07);
    path.lineTo(width*0.7, height);
    path.lineTo(width*0.0, height);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper12 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 28.5.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.26, height*0.77);
    final center1 = Offset(width*0.26, height*0.12);
    final radius = math.min(width*0.1, height*0.1);
    final radius1 = math.min(width*0.117, height*0.117);
    final startAngle = math.pi / 4; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 =  -math.pi * 3 / 2 + math.pi/4; // 45 degrees in radians
    final sweepAngle1 = math.pi * 3 / 2; //
    path.moveTo(0.0, height*0.2);
    path.lineTo(0.0, height*0.2);
    path.lineTo(width*0.3, height*0.2);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius1), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.5, height*0.2);
    path.lineTo(width*0.7, height*0.2);
    path.lineTo(width*0.7, height*0.2);
    //for horizontal
    path.lineTo(width*0.5, height);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.3, height);
    path.lineTo(width*0.0, height);

    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper13 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 29.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.26, height*0.93);
    final center1 = Offset(width*0.26, height*0.135);
    final radius = math.min(width*0.11, height*0.11);

    final startAngle = math.pi / 4; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 =  -math.pi * 3 / 2 + math.pi/4; // 45 degrees in radians
    final sweepAngle1 = math.pi * 3 / 2; //
    path.moveTo(0.0, height*0.2);
    path.lineTo(0.0, height*0.2);
    path.lineTo(width*0.3, height*0.2);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.5, height*0.2);
    path.lineTo(width*0.7, height*0.2);
    path.lineTo(width*0.7, height);

    //for horizontal
    path.lineTo(width*0.5, height);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.3, height);
    path.lineTo(width*0.0, height);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class JigsawClipper14 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 31.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.26, height*0.55);
    final center1 = Offset(width*0.25, height*0.074);
    final radius = math.min(width*0.1, height*0.1);
    final startAngle = math.pi / 4; // 45 degrees in radians
    final sweepAngle = -math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = -math.pi + math.pi / 4; // 45 degrees in radians
    final sweepAngle1 = -math.pi * 3 / 2; //
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width*0.3, height*0.0);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.5, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height);
    //for horizontal
    path.lineTo(width*0.6, height);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.2, height);
    path.lineTo(width*0.0, height);

    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class CircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = 20.w;
    double width = 39.w;
    final path = Path();
    final center = Offset(width*0.4, height*0.7);
    final center1 = Offset(width*0.75, height*0.35);
    final radius = math.min(width*0.1, height*0.1);

    final startAngle = -math.pi / 4; // 45 degrees in radians
    final sweepAngle = math.pi * 3 / 2; // 270 degrees in radians
    final startAngle1 = math.pi/4 + math.pi; // 45 degrees in radians
    final sweepAngle1 = math.pi*3/2;
    path.moveTo(0.0, height*0.0);
    path.lineTo(0.0, height*0.0);
    path.lineTo(width, height*0.0);
    path.lineTo(width*0.7, height*0.0);
    path.lineTo(width*0.7, height*0.3);
    path.arcTo(Rect.fromCircle(center: center1, radius: radius), startAngle1, sweepAngle1, false);
    path.lineTo(width*0.7, height*0.5);
    path.lineTo(width*0.7, height*0.63);

    path.lineTo(width*0.5, height*0.63);
    path.arcTo(Rect.fromCircle(center: center, radius: radius), startAngle, sweepAngle, false);
    path.lineTo(width*0.3, height*0.63);
    path.lineTo(width*0.0, height*0.63);
    path.lineTo(0.0,0.0 );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}