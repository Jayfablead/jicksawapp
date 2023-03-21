import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shake/shake.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int diceValue = 1;
  @override
  void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(
      onPhoneShake: () {
        setState(() {
          diceValue = Random().nextInt(6) + 1;
          print(diceValue);
        });
        // ScaffoldMessenger.of(context).showSnackBar(
        //    SnackBar(
        //     content: Text(diceValue.toString()),
        //   ),
        // );
        // Do stuff on phone shake
      },
      minimumShakeCount: 1,
      shakeSlopTimeMS: 500,
      shakeCountResetTime: 3000,
      shakeThresholdGravity: 2.7,
    );

    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(diceValue.toString()),
          (diceValue==1)?Image.asset("assets/images1.png"):
          (diceValue==2)?Image.asset("assets/images2.jpeg"):
          (diceValue==3)?Image.asset("assets/download3.jpeg"):
          (diceValue==4)?Image.asset("assets/download4.jpeg"):
          (diceValue==5)?Image.asset("assets/download5.jpeg"):
          Image.asset("assets/download6.jpeg")
        ],
      ),

    );
  }
}
