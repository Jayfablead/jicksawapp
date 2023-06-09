import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/main%20Pages/shop2.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/loader.dart';

class MyPurchasedGames extends StatefulWidget {
  const MyPurchasedGames({super.key});

  @override
  State<MyPurchasedGames> createState() => _MyPurchasedGamesState();
}

bool isLoading = true;

class _MyPurchasedGamesState extends State<MyPurchasedGames> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appbar1(
          title1: 'My Purchased Games',
          press: () {
            Get.back();
          },
          icn: Icon(Icons.arrow_back_ios_new_rounded),
          act: () {},
          icn1: Icon(null),
        ),
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                        height: 100.h,
                        child: Image.asset(
                          'assets/wall2.webp',
                          fit: BoxFit.fitHeight,
                        )),
                    Container(
                      height: 100.h,
                      color: Colors.black.withOpacity(0.20),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            SizedBox(
                              height: 85.h,
                              child: ListView.builder(
                                // scrollDirection: Axis.horizontal,
                                itemCount: shop?.allItems?.length,
                                padding: EdgeInsets.zero,
                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(() => GameInfo(
                                          id: shop?.allItems?[index].itemId ??
                                              ''));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      padding: EdgeInsets.all(1.h),
                                      margin:
                                          EdgeInsets.symmetric(vertical: 0.5.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                height: 6.h,
                                                width: 12.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20)),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  child: CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl: shop
                                                            ?.allItems?[index]
                                                            .itemLogo ??
                                                        '',
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                progress) =>
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
                                                width: 5.w,
                                              ),
                                              SizedBox(
                                                width: 32.w,
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 30.w,
                                                      child: Text(
                                                        shop?.allItems?[index]
                                                                .itemName ??
                                                            '',
                                                        style: appname,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                shop?.allItems?[index]
                                                        .ratings ??
                                                    '',
                                                style: TextStyle(
                                                    color: Color(0xff8f8d8d)),
                                              ),
                                              SizedBox(
                                                width: 1.w,
                                              ),
                                              Text(
                                                '★',
                                                style: TextStyle(
                                                  color: Color(0xff8f8d8d),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            '\$ ${shop?.allItems?[index].price ?? ''}',
                                            style: TextStyle(
                                                color: Color(0xff8f8d8d)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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

  shopitems() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'all_items';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().shopapi(data).then((response) async {
          shop = shopitemModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && shop?.status == "success") {
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
