
import 'package:flutter/material.dart';

class Move extends StatelessWidget {

  int move;

  Move(this.move);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Text(
        "Move :  ${move}",
        style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: 18,fontFamily: 'Poppins',letterSpacing: 2,fontWeight: FontWeight.w400
        ),
      ),
    );
  }
}