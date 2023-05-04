import 'package:flutter/material.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

class Previousbtn extends StatelessWidget {
  VoidCallback goback;



  Previousbtn(this.goback);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,elevation: 00),
      onPressed: goback,
   child: Icon(Icons.arrow_back_ios_new_rounded,color: primary,),
    );
  }
}
