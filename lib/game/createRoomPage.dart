import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Game%20Modals/gameJoinedModal.dart';
import 'package:jicksaw/Modal/waitModal.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/hexcolor.dart';
import '../main Pages/design.dart';

class CreateRoomPage extends StatefulWidget {
  const CreateRoomPage({super.key});

  @override
  State<CreateRoomPage> createState() => _CreateRoomPageState();
}

bool isLoading = true;
Timer? _timer;

class _CreateRoomPageState extends State<CreateRoomPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startapi();
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      loadapi();
    });
  }

  void dispose() {
    _timer?.cancel();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: '',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        body: isLoading
            ? Container()
            : Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 7.h,
                            width: 15.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: (wait?.userInfo?.characterImg).toString(),
                                progressIndicatorBuilder:
                                    (context, url, progress) =>
                                        CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Image.asset(
                                  'assets/user.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            wait?.userInfo?.name ?? '',
                            style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'Poppins',
                                color: primary,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 70.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Lottie.asset('assets/reward_cup/wait.json',
                                    height: 35.h),
                                Text(
                                  'Waiting For Another Player to Join The Game.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins'),
                                ),
                              ],
                            ),
                            TextButton(
                                onPressed: () {
                                  gameexit(context, 'Are You Sure?',
                                      'You Want to Stop Waiting?',
                                      callback: closeapi);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      fontSize: 17.sp, color: primary),
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  startapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'game_start';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().WaitApi(data).then((response) async {
          wait = waitModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && wait?.status == "success") {
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

  loadapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'is_oponent_joined';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().joindApi(data).then((response) async {
          joingame = gameJoindModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && joingame?.status == "success") {
            Get.off(design());
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

  closeapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'game_close';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().closeapi(data).then((response) async {
          wait = waitModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && wait?.status == "success") {
            Get.off(mainpage2());
            setState(() {
              _timer?.cancel();
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
