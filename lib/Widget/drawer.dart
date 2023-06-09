import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:jicksaw/Screen/Homepage.dart';

import 'package:jicksaw/Shop/shop%20CatePage.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';

import 'package:jicksaw/main%20Pages/settings.dart';
import 'package:jicksaw/Shop/Gmaesshop.dart';
import 'package:jicksaw/profile/AllPlayers.dart';
import 'package:jicksaw/profile/porfilePage.dart';


import 'package:sizer/sizer.dart';

import '../Modal/playermodal.dart';
import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../profile/login.dart';
import '../subscription/subscription_page.dart';
import 'const widget.dart';


class drawer1 extends StatefulWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  State<drawer1> createState() => _drawer1State();
}

bool isloading = true;

class _drawer1State extends State<drawer1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
    print('open');
  }

  Widget build(BuildContext context) {
    double widthDrawer = MediaQuery.of(context).size.width * 0.85;
    return Drawer(
      child: isloading?Container(

        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Loading... ',
                  style: TextStyle(

                      fontFamily: 'Poppins',
                      fontSize: 15.sp),
                ),
                SizedBox(height: 3.h),
                CircularProgressIndicator(color: primary,)
              ],
            )),
      ):Container(
        color: bgcolor,
        // color: Colors.black,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: widthDrawer,
          color: bgcolor,
          // color: Colors.black,
          child: ListView(
            //padding: EdgeInsets.all(2.w),
            children: [

              InkWell(
                onTap: () {},
                child: Container(
                  height: 12.h,
                  padding: EdgeInsets.all(1.w),
                  width: widthDrawer,
                  // color: Colors.black.withOpacity(0.3),
                  decoration: BoxDecoration(),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 8.5.h,
                        width: 17.w,
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
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/user.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //     radius: 9.w,
                      //     backgroundImage: NetworkImage(
                      //         "https://icdn.football-espana.net/wp-content/uploads/2022/06/Neymar-Junior2.jpeg")),
                      SizedBox(
                        width: 5.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            profileviewmodal?.profileViewPlayer?.name ?? '',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                letterSpacing: 0.5,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          SizedBox(
                            width: 42.w,
                            child: Text(usermodal?.userData?.eMail ?? "",
                                maxLines: 2,
                                style: TextStyle(
                                    color: primary,
                                    fontFamily: 'Poppins',
                                    fontSize: 11.sp,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(() => mainpage2());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.house,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Home",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => ShopCategory());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.shopify_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Shop",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => MyProfile());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_outline_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Profile",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => Allplayerspage());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people_outline,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text('All Players',
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => subscription());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.subscriptions_outlined,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Subscription",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(() => setting());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 64.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Settings",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 6.h,
                  ),
                  InkWell(
                    onTap: () async {
                      await SaveDataLocal.clearUserData();
                      Get.offAll(login());
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 65.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.logout,
                                      color: Colors.red,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Logout",
                                        style: TextStyle(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins',
                                          color: Colors.red,
                                        )),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 12.sp,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600);

  viewap() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'profile_view_player';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().profileviewapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            // setState(() {
            //   isloading = false;
            // });

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
      }
    });
  }
}