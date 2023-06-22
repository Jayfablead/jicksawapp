import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:jicksaw/profile/Forgot%20Password.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/profile/changepwd.dart';
import 'package:jicksaw/purchage/My%20Purchased%20Games.dart';
import 'package:jicksaw/subscription/allsubspage.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/drawer.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  State<setting> createState() => _settingState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
bool isLoading = false;

class _settingState extends State<setting> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
          extendBodyBehindAppBar: true,
          key: _scaffoldKey,
          drawer: drawer1(),
          backgroundColor: Colors.grey.shade300,
          appBar: appbar1(
              title1: 'Settings',
              press: () {
                _scaffoldKey.currentState?.openDrawer();
              },
              icn: Icon(Icons.menu),
              act: () {},
              icn1: Icon(null)),
          body: isLoading
              ? Container()
              : Stack(
                  children: [
                    Container(
                        height: 100.h,
                        child: Image.asset(
                          'assets/wall2.webp',
                          fit: BoxFit.fitHeight,
                        )),
                    Container(
                      height: 100.h,
                      color: Colors.black.withOpacity(0.40),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Column(children: [
                        SizedBox(
                          height: 14.h,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8.w),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "General Settings",
                            // style: primarytxt1,
                            style: TextStyle(
                              color: primary,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 0,
                          color: Colors.white,
                          child: SizedBox(
                            height: 60.h,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Container(
                                      child: Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 1.w),
                                        height: 9.h,
                                        width: 19.w,
                                        padding: EdgeInsets.all(1.w),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl: (profileviewmodal
                                                    ?.profileViewPlayer
                                                    ?.profilePic)
                                                .toString(),
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/user.png',
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 3.w),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            (profileviewmodal
                                                    ?.profileViewPlayer?.name)
                                                .toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp,
                                              fontFamily: 'Poppins',
                                              letterSpacing: 2,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 60.w,
                                            child: Text(
                                              (profileviewmodal
                                                      ?.profileViewPlayer
                                                      ?.eMail)
                                                  .toString(),
                                              maxLines: 2,
                                              style: TextStyle(
                                                color: primary,
                                                fontSize: 13.sp,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 2,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),),SizedBox(
                                    height: 0.5.h,
                                  ),
                                  Divider(color: Colors.black45,),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(()=> Forgotpwd());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Forgot Password',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Get.to(()=> Changepwd());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Change Password',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),

                                  InkWell(
                                    onTap: () {
                                     Get.to(MySubscriptions());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'My Subscription',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  InkWell(
                                    onTap: () {
                                    Get.to(MyPurchasedGames());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'My Purchased Games',
                                          style: TextStyle(
                                            fontSize: 13.sp,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Icon(Icons.arrow_forward_ios)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                      ]),
                    ),
                  ],
                )),
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
