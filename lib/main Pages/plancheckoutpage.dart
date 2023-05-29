import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class PlanCheckoutPage extends StatefulWidget {
  String? name;
  String? imgs;
  String? method;

  PlanCheckoutPage({Key? key, this.name, this.imgs, this.method}) : super(key: key);

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
                            '\$ 06.99',
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
                            '\$ 00.99',
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
                            '\$ 05.99',
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
                      Row(
                        children: [
                          Container(
                            height: 5.h,
                            width: 11.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: widget.imgs.toString(),
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
                            width: 5.w,
                          ),
                          Text(
                            '${widget.name} ',
                            style:
                            TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Text(
                        'You Are Paying Using ${widget.method} For This Order.',
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
