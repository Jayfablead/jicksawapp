import 'package:flutter/material.dart';
import 'package:jicksaw/Widget/const%20widget.dart';

import 'const.dart';


class MyButton extends StatelessWidget {
  final String child;
  final VoidCallback onTap;
  var btnColor = primary;
  MyButton({Key? key, required this.child, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (child == 'C') {
      btnColor = Colors.green;
    } else if (child == 'del') {
      btnColor = Colors.red;
    } else if (child == '=') {
      btnColor = Colors.deepPurple;
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: btnColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              child,
              style: blackTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
