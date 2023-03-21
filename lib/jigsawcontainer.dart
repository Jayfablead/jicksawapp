// import 'package:flutter/material.dart';
// import 'package:jicksaw/jigsawclipper.dart';
//
// class JigsawContainer extends StatelessWidget {
//   final double width;
//   final double height;
//   final Widget child;
//
//   JigsawContainer({required this.width, required this.height, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter:JigsawClipper1(),
//       child: Container(
//         color: Colors.red,
//         width: 140.0,
//         height: 180.0,
//         child: child,
//       ),
//     );
//   }
// }
// class JigsawContainer11 extends StatelessWidget {
//   late final double width;
//   late final double height;
//   late final Widget child;
//
//   JigsawContainer11({required this.width, required this.height, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: JigsawClipper11(),
//       child: Container(
//         color: Colors.red,
//         width: 130.0,
//         height: 300.0,
//         child: child,
//       ),
//     );
//   }
// }
// class JigsawContainer8 extends StatelessWidget {
//   late final double width;
//   late final double height;
//   late final Widget child;
//
//   JigsawContainer8({required this.width, required this.height, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: JigsawClipper8(),
//       child: Container(
//         color: Colors.red,
//         width: 120.0,
//         height: 300.0,
//         child: child,
//       ),
//     );
//   }
// }
// class JigsawContainer4 extends StatelessWidget {
//   late final double width;
//   late final double height;
//   late final Widget child;
//
//   JigsawContainer4({required this.width, required this.height, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipPath(
//       clipper: JigsawClipper4(),
//       child: Container(
//         alignment: Alignment.center,
//         color: Colors.red,
//         width: 120.0,
//         height: 180.0,
//         child: child,
//       ),
//     );
//   }
// }
// // class JigsawContainer2 extends StatelessWidget {
// //   late final double width;
// //   late final double height;
// //   late final Widget child;
// //
// //   JigsawContainer2({required this.width, required this.height, required this.child});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return ClipPath(
// //       clipper: JigsawClipper2(),
// //       child: Container(
// //         alignment: Alignment.center,
// //         color: Colors.red,
// //         width: 120.0,
// //         height: 180.0,
// //         child: child,
// //       ),
// //     );
// //   }
// // }