import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/design.dart';
import 'package:jicksaw/drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../const widget.dart';

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
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white
      // bgcolor
      ,
      drawer: drawer1(),
      body: WillPopScope(
        onWillPop: dialog,
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {
                                _scaffoldKey.currentState?.openDrawer();
                              },
                              icon: Icon(
                                Icons.menu_rounded,
                                color: primary,
                              )),
                          SizedBox(
                            width: 30.w,
                          ),
                          Text(
                            'Home',
                            style: primarytxt1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hii " +
                                (usermodal?.userData?.name).toString() +
                                " !!",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 17.sp,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'game'),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              Icons.category,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 5.h,
                  // width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              select = index;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.h,
                            padding: EdgeInsets.symmetric(
                                horizontal: 5.w, vertical: 1.h),
                            margin: EdgeInsets.only(right: 3.w),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: (select == index) ? primary : Colors.black,
                            ),
                            child: Text(
                              data[index].toString(),
                              style: TextStyle(
                                  color: (select == index)
                                      ? Colors.white
                                      : Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'game',
                                  letterSpacing: 1.5,
                                  fontSize: 11.sp),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 76.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/wall.jpeg',
                        ),
                        fit: BoxFit.fitWidth),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 2.5.h),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 3.w),
                            width: 85.w,
                            height: 7.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                color: Colors.white),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '1',
                                      style: TextStyle(
                                          fontFamily: 'game',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Level',
                                      style: TextStyle(
                                          fontFamily: 'game',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '10',
                                      style: TextStyle(
                                          fontFamily: 'game',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Points',
                                      style: TextStyle(
                                          fontFamily: 'game',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  height: 6.h,
                                  width: 13.w,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: (profileviewmodal
                                              ?.profileViewPlayer?.profilePic)
                                          .toString(),
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/user.png',
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 15.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(50),
                            topLeft: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 1.w),
                              height: 0.65.h,
                              width: 10.w,
                              decoration: BoxDecoration(
                                color: Colors.deepOrange.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(children: [Image.asset('')]),
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
    );
  }

  Future<bool> dialog() async {
    close();
    return await false;
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
              // isLoading = false;
            });
          } else {}
        });
      } else {
        setState(() {
          // isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
