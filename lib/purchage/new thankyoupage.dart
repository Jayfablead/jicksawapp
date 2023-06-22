import 'dart:convert';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:jicksaw/Modal/shoptransactionModal.dart';
import 'package:jicksaw/Modal/transactionModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:sizer/sizer.dart';

import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class ThanksPage1 extends StatefulWidget {
  String? name;
  String? price;
  String? method;
  int? type;
   ThanksPage1({super.key,this.name, this.method, this.price, this.type});

  @override
  State<ThanksPage1> createState() => _ThanksPage1State();
}
bool isLoading = true;
class _ThanksPage1State extends State<ThanksPage1> {
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.type == 0?shoptransapi():viewtransapi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff607084),
      body: Center(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Container(
                    height: 70.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Thank you!",
                          style: TextStyle(fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold, fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Your Transaction was Successful",
                          style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,fontFamily: 'Poppins'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DottedLine(
                          dashLength: 10,
                          dashGapLength: 5,
                          lineThickness: 1,
                          dashColor: Colors.black38,
                        ),
                        SizedBox(height: 1.h,),
                        Padding(
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
                                    widget.type == 0?shoptransaction?.orderDetails?.orderId ?? '':trans?.thankYou?.transactionId ?? '',
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 39.w,
              bottom: 81.h,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    width: 5,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.green,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Icon(
                    Icons.check_rounded,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
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
        buildErrorDialog(context, 'Error', "Internate Required");
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
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
