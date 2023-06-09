import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shoptransactionModal.dart';
import 'package:jicksaw/Modal/transactionModal.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/Shop/Gmaesshop.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';

class PurchaseTYPage extends StatefulWidget {
  String? name;
  String? price;
  String? method;
  int? type;

  PurchaseTYPage({Key? key, this.name, this.method, this.price, this.type})
      : super(key: key);

  @override
  State<PurchaseTYPage> createState() => _PurchaseTYPageState();
}

bool isLoading = true;

class _PurchaseTYPageState extends State<PurchaseTYPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.type == 2?viewtransapi():shoptransapi();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        backgroundColor: Colors.white,
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 6.h,
                      ),
                      Column(
                        children: [
                          Container(
                            height: 18.h,
                            child: Lottie.asset('assets/you.json'),
                          ),
                          Text(
                            '😊 Thank you ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                            widget.type == 2
                                ? 'You have Purchased Our ${trans?.thankYou?.productName} of Subscription.'
                                : 'You have Purchased ${shoptransaction?.orderDetails?.itemName}.',
                            style: mainstyle,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            height: widget.type == 2
                                ? 35.h:38.h,
                            width: MediaQuery.of(context).size.width,
                            child: Card(
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(3.w),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Order-No',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          widget.type == 1?shoptransaction?.orderDetails?.orderId ?? '':trans?.thankYou?.transactionId ?? '',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Order Type',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          widget.type == 1
                                              ? 'Subscription Plans'
                                              : 'In-App Purchases',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Order-Id :',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      widget.type == 0?shoptransaction?.orderDetails?.orderNo ?? '': trans?.thankYou?.transactionNo ?? '',
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.80),
                                          fontSize: 14.sp),
                                    ),
                                    widget.type == 1?Container():Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Transaction-Id :',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.90),
                                                  fontSize: 14.sp),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(
                                                  color: Colors.black
                                                      .withOpacity(0.80),
                                                  fontSize: 14.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 1.h,),
                                        Text(
                                          shoptransaction?.orderDetails?.transactionId ?? '',
                                          style: TextStyle(
                                              color: Colors.black.withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Order Details :',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          '',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          widget.type == 1
                                              ? '${trans?.thankYou?.productName} of Subscription.'
                                              : (shoptransaction?.orderDetails?.itemName).toString(),
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          widget.type == 0?"\$ ${shoptransaction?.orderDetails?.price}" : ' \$ ${trans?.thankYou?.amount}',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Payment Type',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          'Stripe',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.80),
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
                            height: 2.h,
                          ),
                          Text(
                            'Thanks for Purchasing. Keep Shopping with Us.',
                            style: mainstyle,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text('We are Happy to Serve You',
                              style: mainstyle, textAlign: TextAlign.center),
                          SizedBox(
                            height: 1.h,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(
                                mainpage2(),
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 85.w,
                              margin: EdgeInsets.only(top: 2.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: primary),
                              padding: EdgeInsets.all(2.h),
                              child: Text(
                                'CONTINUE',
                                style: TextStyle(
                                  fontSize: 13.sp,
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  viewtransapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'subscription_details';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().transactionapi(data).then((response) async {
          trans = TransactionModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && trans?.status == "success") {
            setState(() {
              isLoading = false;

              print(viewcard?.cardDetails?.cardId ?? '');
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

  shoptransapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'user_order_details';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().shoptransactionapi(data).then((response) async {
          shoptransaction =
              shoptransactionModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              shoptransaction?.status == "success") {
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
