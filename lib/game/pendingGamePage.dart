import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/pendingGameModal.dart';
import 'package:jicksaw/Widget/hexcolor.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/main%20Pages/design.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../Widget/const.dart';

class PendingGamePage extends StatefulWidget {
  const PendingGamePage({super.key});

  @override
  State<PendingGamePage> createState() => _PendingGamePageState();
}

bool isLoading = true;

Timer? _timer;

class _PendingGamePageState extends State<PendingGamePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = Timer.periodic(const Duration(milliseconds: 1000), (timer) {
      PendingApi();
    });
  }

  void dispose() {
    setState(() {
      _timer?.cancel();
    });
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: 'Join Game',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        body: isLoading
            ? Container()
            : pendinggame?.gameStartRequests?.length == null ||
                    pendinggame?.gameStartRequests?.length == [] ||
                    pendinggame?.gameStartRequests?.length == 0
                ? Container(
                    height: 80.h,
                    alignment: Alignment.center,
                    child: Text(
                      'No Active Games Available',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                : Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 80.h,
                          child: ListView.builder(
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: HexColor.fromHex('#eaebfc'),
                                    border: Border.all(
                                        color: HexColor.fromHex('#000CF9')),
                                    borderRadius: BorderRadius.circular(20)),
                                margin: EdgeInsets.all(2.w),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 2.w, vertical: 1.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 5.h,
                                            width: 11.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(90)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(90),
                                              child: CachedNetworkImage(
                                                fit: BoxFit.cover,
                                                imageUrl: (pendinggame
                                                        ?.gameStartRequests?[
                                                            index]
                                                        .profilePic)
                                                    .toString(),
                                                progressIndicatorBuilder: (context,
                                                        url, progress) =>
                                                    CircularProgressIndicator(),
                                                errorWidget:
                                                    (context, url, error) =>
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
                                            pendinggame
                                                    ?.gameStartRequests?[index]
                                                    .opponentName ??
                                                '',
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily: 'Poppins',
                                                color:
                                                    HexColor.fromHex('#000CF9'),
                                                fontWeight: FontWeight.w600,
                                                letterSpacing: 1),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                        onTap: () {
                                          GameApi(
                                              pendinggame
                                                  ?.gameStartRequests?[index]
                                                  .gameId,
                                              pendinggame
                                                  ?.gameStartRequests?[index]
                                                  .opponentUserId);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 8.w, vertical: 1.h),
                                          decoration: BoxDecoration(
                                            color: primary,
                                            borderRadius:
                                                BorderRadius.circular(32.0),
                                          ),
                                          child: Text(
                                            "Join",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 2,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )
                                    ]),
                              );
                            },
                            itemCount: pendinggame?.gameStartRequests?.length,
                          ),
                        )
                      ],
                    ),
                  ),
      ),
    );
  }

  PendingApi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'game_request_pending';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().WaitApi(data).then((response) async {
          pendinggame = pendingGameModal.fromJson(json.decode(response.body));

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

  GameApi(String? gameid, String? userid) {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['game_id'] = gameid.toString();
    data['oponent_user_id'] = userid.toString();
    data['action'] = 'game_started';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().Gamesapi(data).then((response) async {
          pendinggame = pendingGameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && pendinggame?.status == "success") {
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
}
