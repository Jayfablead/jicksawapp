import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/design.dart';
import 'package:jicksaw/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../other/const widget.dart';

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
        backgroundColor: Colors.white
        // bgcolor
        ,
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
                                  'assets/wall2.webp',
                                ),
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
                                    // Container(
                                    //   margin: EdgeInsets.only(top: 1.5.h),
                                    //   padding:
                                    //       EdgeInsets.symmetric(horizontal: 3.w),
                                    //   child: Row(
                                    //     crossAxisAlignment:
                                    //         CrossAxisAlignment.center,
                                    //     mainAxisAlignment:
                                    //         MainAxisAlignment.spaceBetween,
                                    //     children: [
                                    //       Text(
                                    //         "Hii " +
                                    //             (usermodal?.userData?.name)
                                    //                 .toString() +
                                    //             " !!",
                                    //         style: TextStyle(
                                    //           color: Colors.black,
                                    //           fontSize: 17.sp,
                                    //           fontWeight: FontWeight.normal,
                                    //           fontFamily: 'Poppins',
                                    //         ),
                                    //       ),
                                    //       Container(
                                    //         margin: EdgeInsets.symmetric(
                                    //             horizontal: 1.w),
                                    //         height: 6.h,
                                    //         width: 13.w,
                                    //         child: ClipRRect(
                                    //           borderRadius:
                                    //               BorderRadius.circular(90),
                                    //           child: CachedNetworkImage(
                                    //             fit: BoxFit.cover,
                                    //             imageUrl: (profileviewmodal
                                    //                     ?.profileViewPlayer
                                    //                     ?.profilePic)
                                    //                 .toString(),
                                    //             progressIndicatorBuilder: (context,
                                    //                     url, progress) =>
                                    //                 CircularProgressIndicator(),
                                    //             errorWidget:
                                    //                 (context, url, error) =>
                                    //                     Image.asset(
                                    //               'assets/user.png',
                                    //               color: Colors.black,
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ],
                                    //   ),
                                    // ),

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
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/coin.webp',
                                                    width: 8.w,
                                                  ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Text('450'),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/diamond.png',
                                                    width: 8.w,
                                                  ),
                                                  Text('84'),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    'assets/heart.png',
                                                    width: 8.w,
                                                  ),
                                                  Text('3'),
                                                ],
                                              ),
                                              SizedBox(
                                                width: 2.w,
                                              ),
                                            ],
                                          ),
                                          Image.asset(
                                            'assets/profile.png',
                                            width: 8.w,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 20.h,
                                padding: EdgeInsets.symmetric(horizontal: 3.w),
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    topLeft: Radius.circular(50),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      height: 0.5.h,
                                      width: 8.w,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color:
                                            Colors.deepOrange.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    SizedBox(height: 1.h),
                                    Container(
                                      margin: EdgeInsets.only(bottom: 4.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Image.asset(
                                            'assets/1.jpg',
                                            height: 8.h,
                                            width: 17.w,
                                          ),
                                          Container(
                                            width: 50.w,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 2.w),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: [
                                                    Text(
                                                      'Beginner',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                    Text(
                                                      'Level 1',
                                                      style: TextStyle(
                                                        color: primary,
                                                        fontSize: 15.sp,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontFamily: 'Poppins',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  'Learners Gain a Deeper Understanding',
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 12.sp,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Poppins',
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 1.5.h),
                                          InkWell(
                                            onTap: () {
                                              Get.to(
                                                Tutorial(),
                                              );
                                            },
                                            child: Container(
                                              alignment: Alignment.center,
                                              height: 5.h,
                                              width: 22.w,
                                              decoration: BoxDecoration(
                                                color: primary,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Text(
                                                'PLAY',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.sp),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
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

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'profile_view_player';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().profileviewapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
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
}
