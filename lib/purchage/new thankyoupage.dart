import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:jicksaw/Modal/shoptransactionModal.dart';
import 'package:jicksaw/Modal/transactionModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:sizer/sizer.dart';

import '../Screen/Homepage.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';
import '../Widget/const.dart';

class ThanksPage1 extends StatefulWidget {
  String? name;
  String? price;
  String? method;
  int? type;

  ThanksPage1({super.key, this.name, this.method, this.price, this.type});

  @override
  State<ThanksPage1> createState() => _ThanksPage1State();
}

bool isLoading = true;

class _ThanksPage1State extends State<ThanksPage1> {
  void initState() {
    // TODO: implement initState
    super.initState();
    widget.type == 0 ? shoptransapi() : viewtransapi();
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
                    height: 74.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          "Thank you!",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Your Transaction was Successful",
                          style: TextStyle(
                              fontSize: 14.5.sp,
                              color: Colors.black38,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins'),
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
                        Container(
                          height: 60.h,
                          padding: EdgeInsets.all(3.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(width: 50.w,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Zoro roronoa',
                                          style: TextStyle(  fontFamily: 'Poppins',
                                              color: Colors.black.withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                        Text(
                                          'roronoa.zoro@gmail.com',
                                          style: TextStyle(  fontFamily: 'Poppins',
                                              color: Colors.black.withOpacity(0.90),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 1.w),
                                    width: 14.w,
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(90),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl: 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTBLTYTKSbuTc3-ZNnYeOfWCrIttLhtDvabMlW54XMWBe_XL-o9',
                                        progressIndicatorBuilder: (context,
                                            url, progress) =>
                                            CircularProgressIndicator(),
                                        errorWidget:
                                            (context, url, error) =>
                                            Image.asset(
                                              'assets/user.png',
                                              color: Colors.black,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Center(child: SizedBox(width: 70.w,child: Divider(color: Colors.black54,))),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order-No',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    '152',
                                    // widget.type == 0?shoptransaction?.orderDetails?.orderId ?? '':trans?.thankYou?.transactionId ?? '',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order Type',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    widget.type == 1
                                        ? 'Subscription Plans'
                                        : 'In-App Purchases',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order-Id :',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Text(
                                '153387314564564',
                                // widget.type == 0?shoptransaction?.orderDetails?.orderNo ?? '': trans?.thankYou?.transactionNo ?? '',
                                style: TextStyle(  fontFamily: 'Poppins',
                                    color: Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                              widget.type == 1
                                  ? Container()
                                  : Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Transaction-Id :',
                                              style: TextStyle(  fontFamily: 'Poppins',
                                                  color: Colors.black
                                                      .withOpacity(0.90),
                                                  fontSize: 14.sp),
                                            ),
                                            Text(
                                              '',
                                              style: TextStyle(  fontFamily: 'Poppins',
                                                  color: Colors.black
                                                      .withOpacity(0.80),
                                                  fontSize: 14.sp),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 1.h,
                                        ),
                                        Text(
                                          'bjbasvdwqbdajbssfba5112384456',
                                          // shoptransaction?.orderDetails?.transactionId ?? '',
                                          style: TextStyle(  fontFamily: 'Poppins',
                                              color: Colors.black
                                                  .withOpacity(0.80),
                                              fontSize: 14.sp),
                                        ),
                                      ],
                                    ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Order Details :',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Beast Character',
                                    // widget.type == 1
                                    //     ? '${trans?.thankYou?.productName} of Subscription.'
                                    //     : (shoptransaction?.orderDetails?.itemName).toString(),
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    '\$ 15.00',
                                    // widget.type == 0?"\$ ${shoptransaction?.orderDetails?.price}" : ' \$ ${trans?.thankYou?.amount}',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Purchased Date :',
                                    // widget.type == 1
                                    //     ? '${trans?.thankYou?.productName} of Subscription.'
                                    //     : (shoptransaction?.orderDetails?.itemName).toString(),
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                   DateFormat('dd-MM-yyyy').format(DateTime.now()).toString(),
                                    // widget.type == 0?"\$ ${shoptransaction?.orderDetails?.price}" : ' \$ ${trans?.thankYou?.amount}',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Payment Type',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.90),
                                        fontSize: 14.sp),
                                  ),
                                  Text(
                                    'Stripe',
                                    style: TextStyle(  fontFamily: 'Poppins',
                                        color: Colors.black.withOpacity(0.80),
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),Align(alignment: Alignment.center,
                                child: InkWell(
                                  onTap: () {
                                    Get.to(
                                      mainpage2(),
                                    );
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 60.w,
                                    margin: EdgeInsets.only(top: 1.5.h),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(90),
                                        color: primary),
                                    padding: EdgeInsets.all(1.5.h),
                                    child: Text(
                                      'CONTINUE',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
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
            Positioned(
              left: 38.w,
              bottom:83.5.h,
              child: Container(
                height: 9.h,
                width: 20.w,
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
