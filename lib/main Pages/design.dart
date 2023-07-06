import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/GameDetilsModal.dart';
import 'package:jicksaw/Modal/challenegeModal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Screen/choicech.dart';
import 'package:jicksaw/Screen/choiceque.dart';
import 'package:jicksaw/Screen/doubleque.dart';

import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/hexcolor.dart';
import 'package:jicksaw/Widget/loader.dart';

import 'package:jicksaw/main%20Pages/gameinfo.dart';
import 'package:jicksaw/main.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';

import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/const.dart';

class design extends StatefulWidget {
  String? cat;
  String? oppid;

  design({Key? key, this.cat, this.oppid}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> with TickerProviderStateMixin {
  int? tap = 0;
  bool _showImage = false;
  AnimationController? _animationController;
  int? _value;
  int count = 0;
  double marginheight = 0.0;
  double margin = 0.0;
  String? step;
  final List<String> pages = ['/MemoryChallenge', '/MathtPage'];
  final Random random = Random();
  String? userid;
  String? opid;

  @override
  void initState() {
    super.initState();
    setState(() {
      count = 0;
      userid = usermodal?.userData?.uid ?? "";

      print('*-*-*-*-*-*-*-*-*-* ${count}');
      liveupdateapi();
    });
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _showImage = false;
          });
        }
      });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  double marginValue = 140.0;
  int cnt = 0;
  bool isloading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // mystery_dialogs = [
    //   update(context, 'Bonus Point', 'You Have Won a Piece and a Exra turn',
    //       callback: challwin),
    //   update(context, 'Penalty', 'You Have put Back last Piece You Win',
    //       callback: challwin)
    // ];
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
          extendBodyBehindAppBar: true,
          drawer: drawer1(),
          key: _scaffoldKey,
          backgroundColor: bgcolor
          // Colors.black
          ,
          appBar: appbar1(
              title1: '',
              press: () {},
              icn: Icon(null),
              act: () {
                gameexit(context, 'Are You Sure ?', 'You want to Quit?',
                    callback: endapi);
              },
              icn1: Icon(Icons.logout_rounded)),
          body: SingleChildScrollView(
            child: isloading
                ? Container()
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    height: 100.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        HexColor.fromHex('#686dd1'),
                        HexColor.fromHex('#41c1c1'),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )),
                    child: Container(
                      margin: EdgeInsets.only(top: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                livegamedetails?.gameDetails?.currentTurn ==
                                        userid
                                    ? 'Your Turn'
                                    : 'Opponent\'s Turn',
                                style:
                                    TextStyle(color: primary, fontSize: 15.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 25.h,
                                    width: 35.w,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 2.h),
                                    decoration: BoxDecoration(
                                        color: livegamedetails?.gameDetails
                                                    ?.currentTurn ==
                                                livegamedetails
                                                    ?.gameDetails?.player1?.uid
                                            ? HexColor.fromHex('#ffecd1')
                                            : HexColor.fromHex('#d6d6d6'),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player1?.uid
                                                ? HexColor.fromHex('#FF9400')
                                                : HexColor.fromHex('#494949'),
                                            width: 2)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 7.h,
                                          width: 15.5.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player1?.uid
                                                ? CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl: livegamedetails
                                                            ?.gameDetails
                                                            ?.player1
                                                            ?.profilePic ??
                                                        '',
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                progress) =>
                                                            CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Image.asset(
                                                      'assets/user.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                : ColorFiltered(
                                                    colorFilter:
                                                        ColorFilter.mode(
                                                      Colors
                                                          .grey, // or any other color
                                                      BlendMode.hue,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fit: BoxFit.cover,
                                                      imageUrl: livegamedetails
                                                              ?.gameDetails
                                                              ?.player1
                                                              ?.profilePic ??
                                                          '',
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                                  progress) =>
                                                              CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Image.asset(
                                                        'assets/user.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          livegamedetails?.gameDetails?.player1
                                                  ?.name ??
                                              '',
                                          style: TextStyle(
                                              color: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player1
                                                          ?.uid
                                                  ? Colors.blue.shade900
                                                  : HexColor.fromHex('#494949'),
                                              fontSize: 15.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          "win : ${livegamedetails?.gameDetails?.player1?.winingPiece ?? ''}",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 25.h,
                                    width: 35.w,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 2.h),
                                    decoration: BoxDecoration(
                                        color: livegamedetails?.gameDetails
                                                    ?.currentTurn ==
                                                livegamedetails
                                                    ?.gameDetails?.player2?.uid
                                            ? HexColor.fromHex('#ffecd1')
                                            : HexColor.fromHex('#d6d6d6'),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player2?.uid
                                                ? HexColor.fromHex('#FF9400')
                                                : HexColor.fromHex('#494949'),
                                            width: 2)),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 7.h,
                                          width: 15.5.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player2?.uid
                                                ? CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl: livegamedetails
                                                            ?.gameDetails
                                                            ?.player2
                                                            ?.profilePic ??
                                                        '',
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                progress) =>
                                                            CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Image.asset(
                                                      'assets/user.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                : ColorFiltered(
                                                    colorFilter:
                                                        ColorFilter.mode(
                                                      Colors
                                                          .grey, // or any other color
                                                      BlendMode.hue,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fit: BoxFit.cover,
                                                      imageUrl: livegamedetails
                                                              ?.gameDetails
                                                              ?.player2
                                                              ?.profilePic ??
                                                          '',
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                                  progress) =>
                                                              CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Image.asset(
                                                        'assets/user.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          livegamedetails?.gameDetails?.player2
                                                  ?.name ??
                                              '',
                                          style: TextStyle(
                                              color: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player2
                                                          ?.uid
                                                  ? Colors.blue.shade900
                                                  : HexColor.fromHex('#494949'),
                                              fontSize: 15.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          "win : ${livegamedetails?.gameDetails?.player2?.winingPiece ?? ''}",
                                          style: TextStyle(
                                              fontSize: 15.sp,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          _value == 0 || _value == null
                              ? SizedBox(
                                  width: 60.w,
                                  child: Text(
                                    "Tap On Roll Dice Button to Start the Game.",
                                    style: TextStyle(
                                        color: primary, fontSize: 15.sp),
                                  ))
                              : Column(
                                  children: [
                                    Visibility(
                                      visible: !_showImage,
                                      child: (_value == 6)
                                          ? Image.asset(
                                              "assets/dice/6.png",
                                              height: 15.h,
                                              width: 30.w,
                                              color: Colors.white,
                                            )
                                          : (_value == 5)
                                              ? Image.asset(
                                                  "assets/dice/5.png",
                                                  height: 15.h,
                                                  width: 30.w,
                                                  color: Colors.white,
                                                )
                                              : (_value == 4)
                                                  ? Image.asset(
                                                      "assets/dice/4.png",
                                                      height: 15.h,
                                                      width: 30.w,
                                                      color: Colors.white,
                                                    )
                                                  : (_value == 3)
                                                      ? Image.asset(
                                                          "assets/dice/3.png",
                                                          height: 15.h,
                                                          width: 30.w,
                                                          color: Colors.white,
                                                        )
                                                      : (_value == 2)
                                                          ? Image.asset(
                                                              "assets/dice/2.png",
                                                              height: 15.h,
                                                              width: 30.w,
                                                              color:
                                                                  Colors.white,
                                                            )
                                                          : (_value == 1)
                                                              ? Image.asset(
                                                                  "assets/dice/1.png",
                                                                  height: 15.h,
                                                                  width: 30.w,
                                                                  color: Colors
                                                                      .white,
                                                                )
                                                              : Container(),
                                    ),
                                    Visibility(
                                      visible: _showImage,
                                      child: Lottie.asset(
                                        "assets/dice.json",
                                        height: 30.h,
                                        width: 60.w,
                                        controller: _animationController,
                                      ),
                                    ),
                                  ],
                                ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: livegamedetails
                                            ?.gameDetails?.currentTurn ==
                                        userid
                                    ? () {
                                        setState(() {
                                          _showImage = true;
                                        });
                                        _animationController!.reset();
                                        _animationController!.forward();
                                        Timer(const Duration(seconds: 3), () {
                                          setState(() {
                                            _value = Random().nextInt(6) + 1;
                                            print(_value);

                                            _showImage = false;
                                          });
                                        });
                                      }
                                    : null,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: livegamedetails
                                              ?.gameDetails?.currentTurn ==
                                          userid
                                      ? 35.w
                                      : 60.w,
                                  margin: EdgeInsets.only(top: 2.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90),
                                      color: livegamedetails
                                                  ?.gameDetails?.currentTurn ==
                                              userid
                                          ? primary
                                          : Colors.grey),
                                  padding: EdgeInsets.all(2.h),
                                  child: Text(
                                    livegamedetails?.gameDetails?.currentTurn ==
                                            userid
                                        ? (_value == null)
                                            ? 'Roll Dice'
                                            : "Roll again"
                                        : 'Wait For Your Turn',
                                    style: TextStyle(
                                      fontSize: 13.sp,
                                      color: Colors.white,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  ),
          )),
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
            Get.offAll(mainpage2());
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
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }

  liveupdateapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";

    data['action'] = 'get_follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().liveupdateapi(data).then((response) async {
          livegamedetails =
              GameDetailsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              livegamedetails?.status == "success") {
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

  void gochallange() {
    int index = random.nextInt(pages.length);
    Get.toNamed(pages[index],
        arguments: {'catid': widget.cat, 'type': 'chellenge'});
  }
}
