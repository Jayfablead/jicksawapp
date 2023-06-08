import 'package:flutter/material.dart';
import 'package:jicksaw/jigsawclipper.dart';

class JigsawContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CircleClipper(),
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
    );
  }
}