import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/main%20Pages/AddCardPage.dart';
import 'package:jicksaw/new%20pages/thanks%20puzzle.dart';
import 'package:sizer/sizer.dart';

import '../other/const widget.dart';

class CheckoutPage extends StatefulWidget {
  String? name;
  String? imgs;
  String? method;
  String? price;
  String? sub;
  int? type;


  CheckoutPage({Key? key, this.name,required this.type,this.imgs, this.sub ,this.method,this.price}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
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
              height: 15.h,
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
                            'Card Option',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp),
                          ),
                          TextButton(onPressed: (){Get.to(AddCardPage());}, child: Text(
                            'Edit',
                            style: TextStyle(
                                color: primary,
                                fontSize: 14.sp),
                          ),)
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '* * * * 0788',
                            style:
                                TextStyle(color: Colors.black, fontSize: 15.sp),
                          ),
                          Text(
                           usermodal?.userData?.name ?? '',
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
              height: widget.type == 1?20.h:25.h,
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
                     widget.type == 1?Row(
                       children: [
                         Text(
                          '${widget.method} Subscription Plan ',

                           style:
                           TextStyle(color: Colors.black, fontSize: 15.sp),
                         ),
                       ],
                     ): Row(
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
                        widget.type == 1?'You Are Subscribing ${widget.method} Our Subscription Plan .':'You Are Paying Using ${widget.method} For This Order.',
                        style:
                        TextStyle(color: primary, fontSize: 15.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {Get.to(PurchaseTYPage(price: widget.price,name: widget.name,method: widget.method,type: widget.type,),);},
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
