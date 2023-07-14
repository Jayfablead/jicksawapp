import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/gameinfoModal.dart';
import 'package:jicksaw/Modal/shopinfoModal.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/purchase_Screen.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';
import '../Shop/Gmaesshop.dart';

class Gameshopinfo extends StatefulWidget {
  String? id;

  Gameshopinfo({Key? key, required this.id}) : super(key: key);

  @override
  State<Gameshopinfo> createState() => _GameshopinfoState();
}

bool isLoading = true;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _GameshopinfoState extends State<Gameshopinfo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: '',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios),
            act: () {},
            icn1: Icon(null)),
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 12.h,
                            width: 24.w,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black54, width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl:
                                    gameinfo?.gameDetails?.productImg ?? '',
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
                          SizedBox(width: 5.w),
                          SizedBox(
                            height: 12.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  gameinfo?.gameDetails?.productName ?? '',
                                  style: primarytxtbig,
                                ),
                                Text(
                                  gameinfo?.gameDetails?.productBrand ?? '',
                                  style: secondarytxt,
                                ),
                                Text(
                                  "${gameinfo?.gameDetails?.productRating ?? ''} ★ ",
                                  style: secondarytxtwhite1,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(PurchaseScreen(
                            points: gameinfo?.gameDetails?.productPoints ?? '',
                            name: gameinfo?.gameDetails?.productName ?? '',
                            itemid: gameinfo?.gameDetails?.productId ?? '',
                            img: gameinfo?.gameDetails?.productImg ?? '',
                            price: gameinfo?.gameDetails?.productPrice ?? '',
                            type: 0,
                          ));
                        },
                        child: Container(
                          height: 5.5.h,
                          alignment: Alignment.center,
                          width: 85.w,
                          margin: EdgeInsets.only(top: 2.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: primary),
                          // padding: EdgeInsets.all(2.h),
                          child: Text(
                            'Purchase (\$ ${gameinfo?.gameDetails?.productPrice ?? ''} / ${gameinfo?.gameDetails?.productPoints ?? ''} Points)',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Description :',
                            style: secondarytxtwhite,
                          )),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Text(
                        gameinfo?.gameDetails?.productDesc ?? '',
                        style: secondarytxtwhite1,
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Screenshots :',
                            style: secondarytxtwhite,
                          )),
                      gameinfo?.gameDetails?.productMultiImg?.length == 0 ||
                              gameinfo?.gameDetails?.productMultiImg ==
                                  null
                          ? Container(
                              alignment: Alignment.center,
                              height: 30.h,
                              width: double.infinity,
                              child: Text(
                                'No Images Available',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15.sp),
                              ),
                            )
                          : SizedBox(
                              height: 30.h,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 2.w, vertical: 2.h),
                                    height: 22.h,
                                    width: 70.w,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(15),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: gameinfo?.gameDetails
                                                ?.productMultiImg?[index] ??
                                            '',
                                        progressIndicatorBuilder:
                                            (context, url, progress) => Center(
                                                child:
                                                    CircularProgressIndicator()),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                          'assets/12.png',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                itemCount: gameinfo
                                    ?.gameDetails?.productMultiImg?.length,
                              ),
                            ),
                      SizedBox(
                        height: 2.h,
                      )
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  shopitems() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'single_game_page';
    data['product_id'] = widget.id.toString();

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().gameinfoapi(data).then((response) async {
          gameinfo = gameinfoModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && gameinfo?.status == "success") {
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
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }
}
