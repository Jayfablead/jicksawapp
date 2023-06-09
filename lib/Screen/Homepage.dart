import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/checkSubsModal.dart';
import 'package:jicksaw/Modal/waitModal.dart';
import 'package:jicksaw/Purchased/allpurchasedCharacters.dart';
import 'package:jicksaw/Purchased/allpurchasedGames.dart';
import 'package:jicksaw/Purchased/allpurchasedPoints.dart';

import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/game/choose%20characters%20page.dart';
import 'package:jicksaw/game/createRoomPage.dart';
import 'package:jicksaw/game/pendingGamePage.dart';
import 'package:jicksaw/main%20Pages/categories%20&%20age.dart';
import 'package:jicksaw/main%20Pages/categotirs%20page.dart';
import 'package:jicksaw/main%20Pages/design.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/main%20Pages/gameinfo.dart';
import 'package:jicksaw/profile/porfilePage.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../subscription/subscription_page.dart';

class mainpage2 extends StatefulWidget {
  const mainpage2({Key? key}) : super(key: key);

  @override
  State<mainpage2> createState() => _mainpage2State();
}

class Sachen {
  String? image;
  String? name;
  int? score;

  Sachen(this.image, this.name, this.score);
}

bool isloading = false;
bool isLoading = true;

class _mainpage2State extends State<mainpage2> {
  List<Sachen> past = [
    Sachen("https://cdn-icons-png.flaticon.com/512/6857/6857448.png",
        "26/3/2023", 130),
    Sachen("https://cdn-icons-png.flaticon.com/512/6299/6299781.png",
        "26/3/2023", 170),
    Sachen("https://cdn-icons-png.flaticon.com/512/5558/5558292.png",
        "26/3/2023", 30),
    Sachen("https://cdn-icons-png.flaticon.com/512/6084/6084990.png",
        "26/3/2023", 230),
    // Sachen("https://www.flaticon.com/free-sticker/jigsaw_8165729?term=puzzle+pieces&page=1&position=7&origin=search&related_id=8165729","26/3/2023",1530),
  ];
  List<String> data = ["Previous", "Ongoing", "Eventual"];
  int select = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        drawer: drawer1(),
        body: WillPopScope(
          onWillPop: dialog,
          child: SingleChildScrollView(
            child: isloading
                ? Container()
                : Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100.h,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                  'assets/wallmain.jpeg',
                                ),
                                colorFilter: ColorFilter.mode(
                                    Colors.black38, BlendMode.luminosity),
                                fit: BoxFit.cover),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 4.h, left: 3.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    print("open");
                                                    _scaffoldKey.currentState
                                                        ?.openDrawer();
                                                  },
                                                  icon: Icon(
                                                    Icons.menu_rounded,
                                                    color: primary,
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      width: 90.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Get.to(AllPurchasedPoints());
                                                },
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/splash/coin.webp',
                                                      width: 7.w,
                                                    ),
                                                    SizedBox(
                                                      width: 2.w,
                                                    ),
                                                    Text(profileviewmodal
                                                            ?.profileViewPlayer
                                                            ?.gamePoints ??
                                                        ''),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.to(
                                                      AllPurchasedCharacters());
                                                },
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/splash/cute.png',
                                                      width: 7.w,
                                                    ),
                                                    SizedBox(
                                                      width: 2.w,
                                                    ),
                                                    Text((profileviewmodal
                                                            ?.profileViewPlayer
                                                            ?.characterCount)
                                                        .toString()),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 4.w,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Get.to(AllPurchasedGames());
                                                },
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/splash/gamepad.png',
                                                      width: 7.5.w,
                                                    ),
                                                    SizedBox(
                                                      width: 2.w,
                                                    ),
                                                    Text((profileviewmodal
                                                            ?.profileViewPlayer
                                                            ?.gameCount)
                                                        .toString()),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          InkWell(
                                            onTap: () {
                                              Get.to(MyProfile());
                                            },
                                            child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 1.w),
                                              width: 9.w,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(90),
                                                child: CachedNetworkImage(
                                                  fit: BoxFit.cover,
                                                  imageUrl: (profileviewmodal
                                                          ?.profileViewPlayer
                                                          ?.latestCharacter)
                                                      .toString(),
                                                  progressIndicatorBuilder:
                                                      (context, url,
                                                              progress) =>
                                                          CircularProgressIndicator(),
                                                  errorWidget:
                                                      (context, url, error) =>
                                                          Image.asset(
                                                    'assets/char.png',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    alignment: Alignment.bottomCenter,
                                    height: 22.h,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 3.w),
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(50),
                                        topLeft: Radius.circular(50),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                            top: 8.h,
                                            child:
                                                Image.asset('assets/moun.png')),
                                        Column(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.symmetric(
                                                  vertical: 1.h),
                                              height: 0.5.h,
                                              width: 8.w,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                color: Colors.orange
                                                    .withOpacity(0.7),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 2.h,
                                            ),
                                            Container(
                                              margin:
                                                  EdgeInsets.only(bottom: 4.h),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Image.asset(
                                                    'assets/dice.png',
                                                    height: 8.h,
                                                    width: 17.w,
                                                  ),
                                                  Container(
                                                    width: 50.w,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              'Play',
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontFamily:
                                                                    'Poppins',
                                                              ),
                                                            ),
                                                            Text(
                                                              'Roll the Dice',
                                                              style: TextStyle(
                                                                color: primary,
                                                                fontSize: 15.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontFamily:
                                                                    'Poppins',
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          'Play and Do Task Given to win a Jigsaw Piece',
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontFamily:
                                                                'Poppins',
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 1.5.h),
                                                  InkWell(
                                                    onTap: checkSubsapi,
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: 5.h,
                                                      width: 22.w,
                                                      decoration: BoxDecoration(
                                                        color: primary,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(30),
                                                      ),
                                                      child: Text(
                                                        'PLAY',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 1,
                                                            fontSize: 14.sp),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
          ),
        ),
      ),
    );
  }

  Future<bool> dialog() async {
    close();
    return false;
  }

  void close() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            content: Text(
              '!! Are You Sure? \n You Want to Quit !!',
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              CupertinoButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Color(0xffff0000)),
                  ),
                  onPressed: () {
                    exit(0);
                  }),
              CupertinoButton(
                  child: Text('No'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ],
          );
        });
  }

  viewap() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'profile_view_player';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().profileviewapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            // print(profileviewmodal?.profileViewPlayer?.name);
            // print(profileviewmodal?.profileViewPlayer?.age);
            // print(profileviewmodal?.profileViewPlayer?.about);
            // print(profileviewmodal?.profileViewPlayer?.profilePic);
            setState(() {
              // isLoading = false;
            });
          } else {}
        });
      } else {
        setState(() {
          // isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }

  checkSubsapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'check_user_susbscription';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().CheckSubsapi(data).then((response) async {
          checksubs = checkSubsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && checksubs?.status == "success") {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  contentPadding: EdgeInsets.only(top: 10.0),
                  content: Container(
                    width: 300.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 2.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  icon: Icon(Icons.close))
                            ],
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Text(
                              "Choose Your Character",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 14.sp),
                            )),
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(ChooseCharactersPage());
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 1.2.h),
                              decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Text(
                                "Choose",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 12.0, right: 12.0),
                            child: Text(
                              "Select option to Start the game or Join the game",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 14.sp),
                            )),
                        SizedBox(
                          height: 2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(CreateRoomPage());
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 1.2.h),
                              decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(32.0),
                              ),
                              child: Text(
                                "Play",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: InkWell(
                            onTap: () {
                              Get.to(PendingGamePage());
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8.w, vertical: 1.2.h),
                              decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(32.0),
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
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        )
                      ],
                    ),
                  ),
                );
              },
            );
            setState(() {
              isLoading = false;
            });
          } else {
            update(context, 'Subscription error',
                'You Have to Subscribe Any Subscription a plan to start game',
                buttonname: 'Subscribe', callback: () {
              Get.to(subscription());
            });
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
