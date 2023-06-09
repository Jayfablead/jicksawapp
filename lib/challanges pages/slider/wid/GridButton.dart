import 'package:flutter/material.dart';
import 'package:jicksaw/Widget/const%20widget.dart';

class GridButton extends StatelessWidget {
  VoidCallback click;
  String text;

  GridButton(this.text, this.click);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: bgcolor),
      ),
      style: ElevatedButton.styleFrom(backgroundColor: primary),
      onPressed: click,
    );
  }
}
