import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/startModal.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../Widget/const.dart';

class Startpage extends StatefulWidget {
  String? pic;

  Startpage({super.key, this.pic});

  @override
  State<Startpage> createState() => _StartpageState();
}

bool isLoading = true;

class _StartpageState extends State<Startpage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    strtApp();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        body: isLoading
            ? Container()
            : Column(
                children: [
                  SizedBox(height: 10.h),
                  Container(
                    height: 35.h,
                    width: 75.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: (start?.img).toString(),
                        progressIndicatorBuilder:
                            (context, url, progress) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            Image.asset(
                              'assets/12.png',
                              fit: BoxFit.cover,
                            ),
                      ),
                    ),
                  ),
                  // Image.network(
                  //   'https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png',
                  //   height: 35.h,
                  //   width: 75.w,
                  //   fit: BoxFit.contain,
                  // ),
                  SizedBox(
                    height: 50.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Let\'s Start !',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25.sp,
                                fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Jigsaw App is Combined platform for Physical Jigsaw Board and Mobile app',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Colors.black.withOpacity(0.6),
                                fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Where you can learn things and complete jigsaw board',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14.sp,
                                color: Colors.black.withOpacity(0.6),
                                fontFamily: 'Poppins'),
                          ),
                          SizedBox(
                            height: 0.h,
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
                                'START',
                                style: TextStyle(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
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
