import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/subsdataModal.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/loader.dart';
import '../drawer.dart';
import '../other/const widget.dart';

class MySubscriptions extends StatefulWidget {
  const MySubscriptions({super.key});

  @override
  State<MySubscriptions> createState() => _MySubscriptionsState();
}

bool isLoading = true;

class _MySubscriptionsState extends State<MySubscriptions> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    subsdetails();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.grey.shade300,
          appBar: appbar1(
              title1: 'My Subscriptions',
              press: () {
                Get.back();
              },
              icn: Icon(Icons.arrow_back_ios_new_rounded),
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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Subscription Details',
                                style:
                                    TextStyle(color: primary, fontSize: 15.sp),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          elevation: 0,
                          color: Colors.white,
                          child: SizedBox(
                            height: 60.h,
                            width: 100.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.h, vertical: 2.h),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Plan Name :',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          Text(
                                            '${allsubs?.allSubs?.productName} of Subscription',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Amount :',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                      Text(
                                        '\$ ${allsubs?.allSubs?.amount}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Product - Id :',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            width: 85.w,
                                            child: Text(
                                              '${allsubs?.allSubs?.productId}',
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Transaction No : ',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                      Text(
                                        '${allsubs?.allSubs?.transactionId}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Transaction Id :',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14.sp),
                                          ),
                                          SizedBox(
                                            height: 1.h,
                                          ),
                                          SizedBox(
                                            width: 85.w,
                                            child: Text(
                                              '${allsubs?.allSubs?.transactionNo}',
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14.sp),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Active Plan Days :',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                      Text(
                                        '${allsubs?.allSubs?.planDays} Days',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Plan Start Date :',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                      Text(
                                        '${allsubs?.allSubs?.planStart}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black45,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Plan End Date :',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                      Text(
                                        '${allsubs?.allSubs?.planEnd}',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14.sp),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Card(color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Cancel Subscription',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15.sp),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: primary, fontSize: 15.sp),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                )),
    );
  }

  subsdetails() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'user_all_subscription_details';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().subsapi(data).then((response) async {
          allsubs = subsdataModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && allsubs?.status == "success") {
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
