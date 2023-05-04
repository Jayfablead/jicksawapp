import 'package:flutter/material.dart';

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
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),

      onPressed: click
      ,
    );
  }
}
