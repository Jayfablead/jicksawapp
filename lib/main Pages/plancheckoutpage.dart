import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class PlanCheckoutPage extends StatefulWidget {

  String? method;
  String? price;

  PlanCheckoutPage({Key? key, this.price,this.method}) : super(key: key);

  @override
  State<PlanCheckoutPage> createState() => _PlanCheckoutPageState();
}

class _PlanCheckoutPageState extends State<PlanCheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(
        act: () {},
        icn1: Icon(null),
        title1: 'Checkout Page',
        press: () {
          Get.back();
        },
        icn: Icon(Icons.arrow_back_ios_new_outlined),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 20.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Main price',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.70),
                                fontSize: 14.sp),
                          ),
                          Text(
                            '\$ ${widget.price}',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.65),
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Taxes & Fees',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.70),
                                fontSize: 14.sp),
                          ),
                          Text(
                            '\$ 00.00',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.65),
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.70),
                                fontSize: 14.sp),
                          ),
                          Text(
                            '\$ 00.00',
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.65),
                                fontSize: 14.sp),
                          ),
                        ],
                      ),
                      Divider(
                        color: Colors.black.withOpacity(0.50),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Total Amount',
                            style:
                            TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                          Text(
                            '\$ ${widget.price}',
                            style:
                            TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 25.h,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.all(3.w),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Text(
                            'All Orders : ',
                            style:
                            TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
        SizedBox(width: 55.w,
          child: Text('${widget.method} Plan Subscription'  , style:
          TextStyle(color: Colors.black, fontSize: 15.sp),
                    ),
        ),   Text('\$ ${widget.price}'  , style:
        TextStyle(color: Colors.black, fontSize: 15.sp),
                  ),
  ],
),
                      SizedBox(height: 2.h,),
                      Text(
                        'You Are Subscribing For ${widget.method} Subscription Plan.',
                        style:
                        TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                width: 85.w,
                margin: EdgeInsets.only(top: 2.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90), color: primary),
                padding: EdgeInsets.all(2.h),
                child: Text(
                  'Place Order',
                  style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            )
          ],
        ),
      ),
    );
  }
}
