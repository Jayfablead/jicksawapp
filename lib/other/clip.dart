
import 'package:flutter/material.dart';

class JigsawClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(size.width * 0.75, 0);
    path.lineTo(size.width * 0.75, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.25);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width * 0.75, size.height * 0.5);
    path.lineTo(size.width * 0.75, size.height * 0.75);
    path.lineTo(size.width / 2, size.height * 0.75);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width / 4, size.height);
    path.lineTo(size.width / 4, size.height * 0.75);
    path.lineTo(0, size.height * 0.75);
    path.lineTo(0, size.height * 0.5);
    path.lineTo(size.width / 4, size.height * 0.5);
    path.lineTo(size.width / 4, size.height * 0.25);
    path.lineTo(size.width / 2, size.height * 0.25);
    path.lineTo(size.width / 2, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}