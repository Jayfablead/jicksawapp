import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jicksaw/shake.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int diceValue = 1;

  void handleShake() {
    setState(() {
      diceValue = Random().nextInt(6) + 1;
      print(diceValue);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shake Dice'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Shake to roll the dice!'),
            SizedBox(height: 16),
            Text(
              '$diceValue',
              style: TextStyle(fontSize: 64),
            ),
            SizedBox(height: 16),
            ShakeDetector(
              onShake: handleShake,
            ),
          ],
        ),
      ),
    );
  }
}
