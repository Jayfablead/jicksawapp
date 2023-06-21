import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Shop/gameinfoshop.dart';

import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/Charpurpage.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';
import '../Widget/drawer.dart';

class AllShopGames extends StatefulWidget {
  const AllShopGames({Key? key}) : super(key: key);

  @override
  State<AllShopGames> createState() => _AllShopGamesState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game {
  String? image;
  String? name;
  Color clr;
  String? star;
  String? price;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr, {this.price});
}

List<game> popular = [
  game("assets/math.png", "Math", Colors.orange.shade900,
      'You will Get Questions based on Maths', Color(0xffffdcbe)),
  game("assets/memory.png", "Memory", Colors.yellow,
      'You will Get Questions based on Memory', Color(0xfffbfac4)),
  game("assets/trivia.png", "Trivia", Colors.teal.shade800,
      'You will Get Random Questions ', Color(0xffccf8f5)),
];

bool isLoading = true;

class _AllShopGamesState extends State<AllShopGames> {
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
        appBar: appbar1(
            title1: 'All Games',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        key: _scaffoldKey,
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 1.5.h,
                        ),
                        GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 2.h,
                            crossAxisSpacing: 2.w,
                            childAspectRatio: 0.9,
                          ),
                          shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          itemCount: shop?.allItems?.length,

                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => GameInfo(
                                      id: shop?.allItems?[index].itemId ?? '',
                                    ));
                              },
                              child: Container(
                                decoration: BoxDecoration(border: Border.all(color: popular[index].clr),
                                    color: popular[index].btnclr,
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 1.h),
                                margin: EdgeInsets.symmetric(horizontal: 1.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl:
                                              shop?.allItems?[index].itemLogo ??
                                                  '',
                                          progressIndicatorBuilder:
                                              (context, url, progress) =>
                                                  CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
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
                                            shop?.allItems?[index].itemName ??
                                                '',
                                            style:TextStyle(
                                              color: popular[index].clr,
                                              fontSize: 15.sp,fontWeight: FontWeight.w600,
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
                                                  '\$ ${shop?.allItems?[index].price ?? ''}',
                                                  style: TextStyle(
                                                      color: Color(0xff2c2c2c)),
                                                ),
                                                SizedBox(height: 0.5.h),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      shop?.allItems?[index]
                                                              .ratings ??
                                                          '',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff2c2c2c)),
                                                    ),
                                                    SizedBox(
                                                      width: 1.w,
                                                    ),
                                                    Text(
                                                      '★',
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xff8f8d8d),
                                                      ),
                                                    ),
                                                  ],
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
                            );
                          },
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
