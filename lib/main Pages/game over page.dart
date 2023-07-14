import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';

import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/gameinfo.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:sizer/sizer.dart';

import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
class GameOver extends StatefulWidget {
  GameOver({Key? key}) : super(key: key);
  @override
  State<GameOver> createState() => _GameOverState();
}
class _GameOverState extends State<GameOver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10.h),

            Image.network(
              'https://cdn-icons-png.flaticon.com/512/6729/6729593.png',
              height: 30.h,
              width: 62.w,
              fit: BoxFit.contain,

            ),
            SizedBox(height: 15.h),
            SizedBox(height: 20.h,
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Game Over !',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'You\'ve Losted a Jigsaw Piece.' ,textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Try your luck again!',textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),

                ],
              ),
            ), SizedBox(height: 0.h,),
            InkWell(
              onTap: () {
                endapi();
              },
              child: Container(
                alignment: Alignment.center,
                width: 85.w,
                margin: EdgeInsets.only(top: 2.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: primary
                ),
                padding: EdgeInsets.all(2.h),
                child: Text(
                  'Try Again',
                  style: TextStyle(
                    fontSize: 15.sp,fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  endapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] = '45';

    data['action'] = 'game_end';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().endapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            Get.offAll(Tutorial());
            Get.snackbar(
              "Game Ended",
              "Successfully",
              icon: Image(image: AssetImage('assets/logo.png')),
              snackPosition: SnackPosition.TOP,
            );
            setState(() {
              isloading = false;
            });
          } else {
            isloading = false;
          }
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }
}
