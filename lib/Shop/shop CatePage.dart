import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Shop/Charactershop.dart';
import 'package:jicksaw/Shop/Gmaesshop.dart';
import 'package:jicksaw/Shop/Pointsshop.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/My%20Purchased%20Games.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../Widget/const.dart';
import '../Widget/drawer.dart';
import 'gameinfoshop.dart';

class ShopCategory extends StatefulWidget {
  const ShopCategory({super.key});

  @override
  State<ShopCategory> createState() => _ShopCategoryState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game {
  String? image;
  String? name;
  Color? clr;
  String? star;
  String? price;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr, {this.price});
}

class _ShopCategoryState extends State<ShopCategory> {
  List<game> charcters = [
    game(
        "https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
        "Bear",
        Colors.deepPurple.withOpacity(0.5),
        'Character',
        Color(0xffE1F8DC),
        price: '0.99'),
    game(
        "https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
        "Lion",
        Colors.tealAccent.withOpacity(0.5),
        'Character',
        Color(0xffd4e0ff),
        price: '2.99'),
    game(
        "https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
        "Fox",
        Colors.deepOrangeAccent.withOpacity(0.5),
        'Character',
        Color(0xffffdcbe),
        price: '1.99'),
  ];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
  }

  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: '',
            press: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            icn: Icon(Icons.menu_rounded),
            act: () {},
            icn1: Icon(null)),
        key: _scaffoldKey,
        backgroundColor: bgcolor
        // Colors.black
        ,
        drawer: drawer1(),
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  height: 83.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 13.h,
                        width: 28.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: profileviewmodal
                                    ?.profileViewPlayer?.profilePic ??
                                '',
                            progressIndicatorBuilder:
                                (context, url, progress) =>
                                    CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/user.png',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Welcome Back,",
                            style: TextStyle(
                              wordSpacing: 3,
                              letterSpacing: 1,
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            profileviewmodal?.profileViewPlayer?.name ?? '',
                            style: TextStyle(
                              wordSpacing: 3,
                              letterSpacing: 1,
                              color: primary,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => AllShopGames());
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffE1F8DC),
                                      border: Border.all(
                                        color: Colors.green.shade700,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 1.h),
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://cdn.icon-icons.com/icons2/2136/PNG/512/google_games_icon_131690.png',
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/12.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Games',
                                              style: TextStyle(
                                                color: Colors.green.shade700,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 1.5,
                                              ),
                                            ),
                                            Align(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'All Games',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => AllShopCharacters());
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffffdcbe),
                                      border: Border.all(
                                        color: Colors.orange.shade900,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 1.h),
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 20.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://purepng.com/public/uploads/thumbnail//purepng.com-jerry-tom-and-jerrytom-and-jerrytomjerryanimated-seriesin-1940characters-1701528659592qeggy.png',
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/12.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Characters',
                                              style: TextStyle(
                                                color: Colors.orange.shade900,
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 1.5,
                                              ),
                                            ),
                                            Align(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'All Available Characters ',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                ],
                                              ),
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
                          SizedBox(
                            height: 4.0.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Get.to(() => PointsShop());
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      color: Color(0xffd4e0ff),
                                      border: Border.all(
                                        color: Colors.deepPurple,
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 1.h),
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 22.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://icon-library.com/images/score-icon-png/score-icon-png-18.jpg',
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/12.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Points',
                                              style: TextStyle(
                                                color: Colors.deepPurple,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 1.5,
                                              ),
                                            ),
                                            Align(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Points you can buy',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.to(() => MyPurchasedGames());
                                },
                                child: Container(
                                  height: 23.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      color: Color(0xffe3e3e3),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 1.h),
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 22.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl:
                                                'https://cdn-icons-png.flaticon.com/512/4727/4727080.png',
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/12.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              'Purchases',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 1.5,
                                              ),
                                            ),
                                            Align(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'View your all purchases',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                ],
                                              ),
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.settings,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.home_rounded,
                              size: 27.sp,
                              color: primary,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.person,
                                color: Colors.black.withOpacity(0.7)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
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
              isLoading = false;
            });
          } else {}
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
