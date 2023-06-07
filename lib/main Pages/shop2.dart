import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shopinfoModal.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/main%20Pages/purchase_Screen.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../other/const widget.dart';
import 'shoppage.dart';

class GameInfo extends StatefulWidget {
  String? id;

  GameInfo({Key? key, required this.id})
      : super(key: key);

  @override
  State<GameInfo> createState() => _GameInfoState();
}

bool isLoading = true;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _GameInfoState extends State<GameInfo> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(isLoading:isLoading,
      scaffold: Scaffold(
        appBar: appbar1(title1: '', press: () {
          Get.back();
        }, icn: Icon(Icons.arrow_back_ios), act: () {
          
        }, icn1: Icon(null)),
        backgroundColor:
        bgcolor
        // Colors.black
        ,
        body: Center(
          child: isLoading?Container():SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                 
                  Row(
                    children: [
                      Container(
                        height: 12.h,
                        width: 24.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: shopitem?.itemDetails?.itemLogo ?? '',
                            progressIndicatorBuilder: (context, url,
                                progress) =>
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
                              shopitem?.itemDetails?.itemName ?? '',
                              style: primarytxtbig,
                            ),
                            Text(

                              shopitem?.itemDetails?. brand?? '',
                              style: secondarytxt,
                            ),
                            Text(
                              "${ shopitem?.itemDetails?.ratings ?? ''} ★ ",
                              style: secondarytxtwhite1,
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(PurchaseScreen(name:  shopitem?.itemDetails?.itemName ?? '', img:  shopitem?.itemDetails?.itemLogo ?? '',price: shopitem?.itemDetails?.price ?? '',));
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
                        'Purchase (\$ ${ shopitem?.itemDetails?.price ?? ''})',
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
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 0.5.h,
                  ),
                  Text(
                    shopitem?.itemDetails?.description ?? '',
                    style: secondarytxtwhite1,
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Divider(
                    color: Colors.black,
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
                  SizedBox(
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
                              borderRadius: BorderRadius.circular(20)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: shopitem?.itemDetails?.screenshots?[index] ?? '',
                              progressIndicatorBuilder:
                                  (context, url, progress) =>
                                  Center(child: CircularProgressIndicator()),
                              errorWidget: (context, url, error) =>
                                  Image.asset(
                                    'assets/12.png',
                                    fit: BoxFit.cover,
                                  ),
                            ),
                          ),
                        );
                      },
                      itemCount:  shopitem?.itemDetails?.screenshots?.length,
                    ),
                  ),
                  SizedBox(height: 2.h,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  shopitems() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'item_details';
    data['item_id'] = widget.id.toString();


    checkInternet().then((internet) async {
      if (internet) {
        authprovider().shopinfoapi(data).then((response) async {
          shopitem = shopinfoModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              shopitem?.status == "success") {
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
