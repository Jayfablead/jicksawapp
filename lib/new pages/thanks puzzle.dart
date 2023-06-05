import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/main%20Pages/shoppage.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../other/const widget.dart';

class PurchaseTYPage extends StatefulWidget {
  String? name;
  String? price;
  String? method;


  PurchaseTYPage({Key? key, this.name, this.method,this.price}) : super(key: key);

  @override
  State<PurchaseTYPage> createState() => _PurchaseTYPageState();
}

class _PurchaseTYPageState extends State<PurchaseTYPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.5.w),
        child: Column(
          children: [
            SizedBox(
              height: 6.h,
            ),
            Column(
              children: [
                Container(
                  height: 20.h,
                  child: Lottie.asset('assets/you.json'),
                ),
                SizedBox(
                  height: 2.h,
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
                  'You have Purchased ${widget.name}.',
                  style: mainstyle,
                  textAlign: TextAlign.center,
                ),
                Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: EdgeInsets.all(3.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Order-No',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                                '12',
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Order Type',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                                'In-App Purchases',
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Order-Id',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                                '33009988223',
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Order Details :',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                                '',
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                              widget.name.toString(),
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                               ' \$ ${widget.price}',
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
                                    fontSize: 14.sp),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Payment Type',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.90),
                                    fontSize: 14.sp),
                              ),
                              Text(
                                widget.method.toString(),
                                style: TextStyle(
                                    color:Colors.black.withOpacity(0.80),
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
                  'Thanks for Paying. Keep Shopping with Us.',
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
                      ShopmainPage(),
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
                      'CONTINUE SHOPPING',
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
    );
  }
}
