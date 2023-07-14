import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/startModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../Widget/const.dart';

class CharPurchased extends StatefulWidget {


  CharPurchased({super.key});

  @override
  State<CharPurchased> createState() => _CharPurchasedState();
}
bool isLoading = true;

class _CharPurchasedState extends State<CharPurchased> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    strtApp();
  }
  @override
  Widget build(BuildContext context) {
    return commanScreen(isLoading: isLoading,
      scaffold: Scaffold(
        body: isLoading?Container():Column(
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
                    left: 13.w,
                    child: Image.network(
                    start?.img ?? '',
                      height: 35.h,
                      width: 75.w,
                      fit: BoxFit.contain,
                    )),
              ],
            ),
            SizedBox(
              height: 40.h,
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
                    'Thanks For Purchasing This Character',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),
                  Text(
                    'Now You Have Access to this Premium Character',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                        color: Colors.black.withOpacity(0.6),
                        fontFamily: 'Poppins'),
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(
                        mainpage2(),
                      );
                    },
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
          ],
        ),
      ),
    );
  }
  strtApp() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'start_img';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().Startappappi(data).then((response) async {
          start = startModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && start?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {
            setState(() {
              isLoading = false;
            });
          }
        });
      } else {
        setState(() {
          isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }

}
