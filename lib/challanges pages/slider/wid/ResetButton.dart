import 'package:flutter/material.dart';

class ResetButton extends StatelessWidget {
  VoidCallback reset;
  String text;

  ResetButton(this.reset, this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: reset,
      
      child: Text("Reset"),
    );
  }
}
