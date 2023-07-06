import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/challenegeModal.dart';
import 'package:jicksaw/main%20Pages/design.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class congratulation extends StatefulWidget {
  String? cat;
  String? age;
  String? type;

  congratulation({Key? key, this.age, this.cat, this.type}) : super(key: key);

  @override
  State<congratulation> createState() => _congratulationState();
}

class _congratulationState extends State<congratulation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('${widget.age},${widget.type},${widget.cat}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  child: Lottie.asset('assets/cong.json'),
                ),
              ),
              Positioned(
                  top: 08.h,
                  left: 22.w,
                  child: Image.network(
                    'http://www.clker.com/cliparts/5/2/c/c/1206558749642883278risto_pekkala_Jigsaw_puzzle_piece.svg.med.png',
                    height: 35.h,
                    width: 55.w,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          SizedBox(
            height: 40.h,
            width: 80.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Congratulations !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'You\'ve Earned a Jigsaw Piece',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Put it in the place',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Play next game and win another price.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black.withOpacity(0.8),
                      fontSize: 16.sp,
                      fontFamily: 'Poppins'),
                ),
                InkWell(
                  onTap: () {challwin();},
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(2.h),
                    child: Text(
                      'CONTINUE',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // SizedBox(height: 2.h),
          // GestureDetector(
          //   onTap: (){
          //
          //   },
          //   child: Padding(
          //     padding:  EdgeInsets.only(left:85.w,top: 3.h),
          //     child: Container(
          //       height: 4.h,
          //       width: 4.h,
          //       decoration: BoxDecoration(
          //           color: Colors.white,
          //           border: Border.all(color: primary,width: 2.0),
          //           shape: BoxShape.circle
          //       ),
          //       child: Icon(Icons.close,color: primary,size: 14.sp,),
          //     ),
          //   ),
          // ),
          // SizedBox(height: 4.h,),
          // Center(
          //   child: Text("Congratulations!",style: TextStyle(
          //       fontFamily: "Poppins",
          //     fontSize: 24.sp,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.black
          //   ),),
          // ),
          // SizedBox(height: 2.h,),
          // Center(
          //   child: Text("Jigsaw Piece Earned",style: TextStyle(
          //       fontFamily: "Poppins",
          //       fontSize: 16.sp,
          //       fontWeight: FontWeight.bold,
          //       color: primary,letterSpacing: 1
          //   ),),
          // ),
          // SizedBox(height: 8.h,),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //
          //     Column(
          //       children: [
          //         Image.asset("assets/jig.png",height: 50.w,width: 60.w,),
          //       ],
          //     ),
          //
          //   ],
          // ),
          // SizedBox(height: 5.h,),
          // Text("You\'ve Earned a Jigsaw Piece",
          //   style: TextStyle(
          //       fontFamily: "Poppins",
          //       fontSize: 18.sp,
          //       fontWeight: FontWeight.bold,
          //       color: Colors.black
          //   ),
          // ),
          // SizedBox(height: 1.h,),
          // Text("Put it in and play for next piece.",
          //   style: TextStyle(
          //       fontFamily: "Poppins",
          //       fontSize: 12.sp,
          //       fontWeight: FontWeight.normal,
          //       color: Colors.black
          //   ),
          // ),
          // SizedBox(height: 18.h,),
          //
          // GestureDetector(
          //   onTap: (){
          //     challwin();
          //   },
          //   child:Container(
          //     alignment: Alignment.center,
          //     height: 7.h,
          //     width: 50.w,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(30.0),
          //       border: Border.all(color: primary,width: 2.0),
          //     ),
          //     child:  Text("Continue",style: TextStyle(
          //         fontWeight: FontWeight.bold,
          //         fontSize: 14.sp,fontFamily: "Poppins",color: primary
          //     ),),
          //   ),
          // )
        ],
      ),
    );
  }

  challwin() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'winning_challenges';
    data['chellenge_type'] = widget.type.toString();
    data['ans'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().winchal(data).then((response) async {
          chalns = challModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chalns?.status == "success") {
            Get.off(design(
              cat: widget.cat,
            ));
            setState(() {
              isloading = false;
            });
          } else {
            setState(() {
              isloading = false;
            });
          }
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
