import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/allpurchasedpointsModal.dart';
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
import '../Widget/hexcolor.dart';

class AllPurchasedPoints extends StatefulWidget {
  const AllPurchasedPoints({Key? key}) : super(key: key);

  @override
  State<AllPurchasedPoints> createState() => _AllPurchasedPointsState();
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
  game(
      price: '0.99',
      "assets/math.png",
      "",
      Colors.orange.shade900,
      '5',
      Color(0xffffdcbe)),
  game(
      price: '0.99',
      "assets/memory.png",
      "Memory",
      Color(0xff172e58),
      '4',
      Color(0xfffbfac4)),
  game(
      price: '0.99',
      "assets/trivia.png",
      "Trivia",
      Colors.teal.shade800,
      '4',
      Color(0xffccf8f5)),
  game(
      price: '0.99',
      "assets/math.png",
      "Math",
      Colors.orange.shade900,
      '5',
      Color(0xffffdcbe)),
  game(
      price: '0.99',
      "assets/memory.png",
      "Memory",
      Color(0xff172e58),
      '4',
      Color(0xfffbfac4)),
  game(
      price: '0.99',
      "assets/trivia.png",
      "Trivia",
      Colors.teal.shade800,
      '4',
      Color(0xffccf8f5)),
  game(
      price: '0.99',
      "assets/math.png",
      "Math",
      Colors.orange.shade900,
      '5',
      Color(0xffffdcbe)),
  game(
      price: '0.99',
      "assets/memory.png",
      "Memory",
      Color(0xff172e58),
      '4',
      Color(0xfffbfac4)),
  game(
      price: '0.99',
      "assets/trivia.png",
      "Trivia",
      Colors.teal.shade800,
      '4',
      Color(0xffccf8f5)),
];

bool isLoading = true;

class _AllPurchasedPointsState extends State<AllPurchasedPoints> {
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
            title1: 'My Purchased Points',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        key: _scaffoldKey,
        body: isLoading
            ? Container()
            : purpoints?.purchases?.length == 0 ||
            purpoints?.purchases?.length == null
            ? Container(
          height: 75.h,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            'No Points Purchased',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 17.sp,
                fontWeight: FontWeight.w600),
          ),
        )
            :SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        SizedBox(height: 85.h,
                          child: GridView.builder(
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
                            itemCount: purpoints?.purchases?.length,

                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // Get.to(() => GameInfo(
                                  //       id: shop?.allItems?[index].itemId ?? '',
                                  //     ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: HexColor.fromHex(purpoints
                                              ?.purchases?[index]
                                              .bgColorBorder ??
                                              '')),
                                      color: HexColor.fromHex(purpoints
                                          ?.purchases?[index]
                                          .bgColor ??
                                          ''),
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
                                            imageUrl: purpoints?.purchases?[index]
                                                .productImg ??
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
                                              purpoints?.purchases?[index]
                                                  .productName ??
                                                  '',
                                              style: TextStyle(
                                                color: HexColor.fromHex(purpoints
                                                    ?.purchases?[index]
                                                    .bgColorBorder ??
                                                    ''),
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
                                                    '\$ ${purpoints?.purchases?[index].productPrice ?? ''}',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle( fontFamily: 'Poppins',
                                                        fontSize: 13.sp,
                                                        color: Color(0xff2c2c2c)),
                                                  ),

                                                  SizedBox(height: 0.5.h),
                                                  Text(
                                                    purpoints?.purchases?[index]
                                                        .productDesc ??
                                                        '',
                                                    overflow: TextOverflow.ellipsis,
                                                    style: TextStyle( fontFamily: 'Poppins',
                                                        fontSize: 13.sp,
                                                        color: Color(0xff2c2c2c)),
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

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'user_purchased_points';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().purpoitsapi(data).then((response) async {
          purpoints =
              allpurchasedPointsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && shop?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {
            setState(() {
              isLoading = false;
            });
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
