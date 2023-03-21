import 'package:flutter/material.dart';
import 'package:jicksaw/MyApp.dart';
import 'package:jicksaw/design.dart';
import 'package:jicksaw/first.dart';
import 'package:jicksaw/jigsaw.dart';
import 'package:jicksaw/modalview.dart';
import 'package:jicksaw/second.dart';
import 'package:jicksaw/shake.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final puzzleKey = GlobalKey<JigsawWidgetState>();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: design()


      // Scaffold(
      //   backgroundColor: Colors.white,
      //   body: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.all(24),
      //       child: Column(
      //         children: [
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               ElevatedButton(
      //                 onPressed: () async {
      //                   await puzzleKey.currentState!.generate();
      //                 },
      //                 child: const Text('Generate'),
      //               ),
      //               const SizedBox(width: 16),
      //               ElevatedButton(
      //                 onPressed: () {
      //                   puzzleKey.currentState!.reset();
      //                 },
      //                 child: const Text('Clear'),
      //               ),
      //             ],
      //           ),
      //           JigsawPuzzle(
      //             gridSize: 2,
      //             image:  AssetImage('assets/img.jpg'),
      //             onFinished: () {
      //               // ignore: avoid_print
      //               print('finished!');
      //             },
      //             // ignore: avoid_redundant_argument_values
      //             snapSensitivity: .5, // Between 0 and 1
      //             puzzleKey: puzzleKey,
      //             onBlockSuccess: () {
      //               // ignore: avoid_print
      //               print('block success!');
      //             },
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

