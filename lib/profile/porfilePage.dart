import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/profile/edit%20profile.dart';

import 'package:sizer/sizer.dart';

class MyProfile extends StatefulWidget {
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  List img = [
    "assets/ney.jpg",
    "assets/ney2.jpg",
    "assets/ney3.webp",
    "assets/ney1.jpg",
    "assets/ney.jpg"
  ];
  bool isLoading = true;
  bool isPlay = false;
  int lenght = 0;
  bool _isExpanded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("hiii");
    viewap();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        drawer: drawer1(),
        key: _scaffoldKey,
        backgroundColor: bgcolor
        // Colors.black
        ,
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 3.w, right: 3.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6.h,
                        ),
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
                              width: 25.w,
                            ),
                            Text(
                              'My Profile',
                              style: primarytxt1,
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              width: 2.w,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 1.w),
                              height: 12.h,
                              width: 25.w,
                              padding: EdgeInsets.all(1.w),
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
                            SizedBox(
                              height: 12.h,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: 52.w,
                                    child: Text(
                                        profileviewmodal
                                                ?.profileViewPlayer?.name ??
                                            "",
                                        style: header),
                                  ),
                                  Container(
                                    width: 52.w,
                                    child: Text(
                                        profileviewmodal
                                                ?.profileViewPlayer?.eMail ??
                                            "",
                                        style: mail),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.to(() => EditProfile());
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 5.5.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                  color: primary,
                                  borderRadius: BorderRadius.circular(90)),
                              child: Text(
                                'Edit Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Divider(
                          color: Color(0xff7a7a7a),
                        ),
                        SizedBox(height: 0.5.h),
                        Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.control_point_duplicate_sharp,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "Points : ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp),
                                ),
                                SizedBox(
                                  width: 6.w,
                                ),
                                SizedBox(
                                  width: 40.w,
                                  child: Text(
                                    profileviewmodal?.profileViewPlayer?.gamePoints ==
                                        '' ||
                                        profileviewmodal
                                            ?.profileViewPlayer?.gamePoints ==
                                            null
                                        ? "0"
                                        : (profileviewmodal?.profileViewPlayer?.gamePoints).toString(),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 1.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.radar,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "Rank : ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                SizedBox(
                                  width: 40.w,
                                  child: Text(
                                    profileviewmodal?.profileViewPlayer?.rank ==
                                                '' ||
                                            profileviewmodal
                                                    ?.profileViewPlayer?.rank ==
                                                null
                                        ? "0"
                                        : (profileviewmodal?.profileViewPlayer?.rank).toString(),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                      fontFamily: 'Poppins',
                                      letterSpacing: 2,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person_outline,
                              color: Colors.black,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "Age : ",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              profileviewmodal?.profileViewPlayer?.age ==
                                          null ||
                                      profileviewmodal
                                              ?.profileViewPlayer?.age ==
                                          ""
                                  ? "N/A"
                                  : profileviewmodal?.profileViewPlayer?.age ??
                                      "",
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 2,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.info_outline_rounded,
                                  color: Colors.black,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "About : ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 2,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13.sp),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  width: profileviewmodal
                                              ?.profileViewPlayer?.about ==
                                          ''
                                      ? 36.w
                                      : 60.w,
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 2.w),
                                  child: Text(
                                    profileviewmodal?.profileViewPlayer
                                                    ?.about ==
                                                null ||
                                            profileviewmodal?.profileViewPlayer
                                                    ?.about ==
                                                ""
                                        ? "N/A"
                                        : profileviewmodal
                                                ?.profileViewPlayer?.about ??
                                            "",
                                    maxLines: _isExpanded ? 20 : 2,
                                    overflow: _isExpanded
                                        ? TextOverflow.visible
                                        : TextOverflow.ellipsis,
                                    style: appname,
                                  ),
                                ),
                                lenght <= 47
                                    ? Container()
                                    : Container(
                                        padding: EdgeInsets.only(
                                            left: 40.w, right: 0.w),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              _isExpanded = !_isExpanded;
                                            });
                                          },
                                          child: Container(
                                              child: _isExpanded
                                                  ? Text(
                                                      "Read Less...",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 11.sp,
                                                          fontFamily:
                                                              'Poppins'),
                                                    )
                                                  : Text("Read More...",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 11.sp,
                                                          fontFamily:
                                                              'Poppins'))),
                                        ),
                                      ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
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
            print(profileviewmodal?.profileViewPlayer?.name);
            print(profileviewmodal?.profileViewPlayer?.age);
            print(profileviewmodal?.profileViewPlayer?.about);
            String? dis = profileviewmodal?.profileViewPlayer?.about.toString();
            lenght = dis!.length == 0 ? 0 : dis.length;
            print(profileviewmodal?.profileViewPlayer?.profilePic);
            setState(() {
              isLoading = false;
            });
          } else {
            isLoading = false;
          }
        });
      } else {
        setState(() {
          isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
