import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';

class ShakeDetector extends StatefulWidget {
  final int shakeThreshold;
  final Duration shakeTime;
  final void Function() onShake;

  ShakeDetector({this.shakeThreshold = 500, this.shakeTime = const Duration(milliseconds: 500), required this.onShake});

  @override
  _ShakeDetectorState createState() => _ShakeDetectorState();
}

class _ShakeDetectorState extends State<ShakeDetector> {
  bool isShaking = false;
  DateTime shakeStartTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    accelerometerEvents.listen((event) {
      if (event.x.abs() > widget.shakeThreshold &&
          event.y.abs() > widget.shakeThreshold &&
          event.z.abs() > widget.shakeThreshold) {
        if (!isShaking) {
          setState(() {
            isShaking = true;
            shakeStartTime = DateTime.now();
          });
        }
      } else {
        if (isShaking && DateTime.now().difference(shakeStartTime) > widget.shakeTime) {
          setState(() {
            isShaking = false;
          });
          widget.onShake();
          print(widget.onShake);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // This widget doesn't need to build anything, so it can return an empty Container
    return Container();
  }
}
