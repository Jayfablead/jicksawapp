import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class modal extends StatefulWidget {
  const modal({Key? key}) : super(key: key);

  @override
  State<modal> createState() => _modalState();
}

class _modalState extends State<modal> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Model Viewer")),
      body: ModelViewer(
        src: 'assets/table_soccer.glb',
        alt: 'Dice',
        autoRotate: true,

      ),
    );
  }
}
