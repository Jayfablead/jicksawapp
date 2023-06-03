import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/main%20Pages/checkoutPage.dart';
import 'package:jicksaw/main%20Pages/subscription_page.dart';

import 'package:sizer/sizer.dart';

import '../other/const widget.dart';

class PurchaseScreen extends StatefulWidget {
  String? name;
  String? img;
  String? price;
   PurchaseScreen({Key? key,this.img,this.name,this.price}) : super(key: key);

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        Positioned(
          top: 0.h,
          child: Container(
            decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.10),
              //     blurRadius: 10,
              //     offset: Offset(0, 5),
              //   ),
              // ],
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    child: Image.asset('assets/wall.jpeg'
                    ),
                  ),
                ),
                Positioned(top: 18.h,left: 5.w,child: SizedBox(width: 90.w,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('Purchasing ${widget.name} ',style: TextStyle(color: Colors.white,fontSize: 15.sp),),

                        ],
                      ),
                      Container(
                        height: 5.h,
                        width: 11.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: widget.img.toString(),
                            progressIndicatorBuilder: (context, url, progress) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/12.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
              ],
            ),
          ),
        ),
        Positioned(
          top: 25.h,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 100.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: Column(
              children: [
                SizedBox(height: 3.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Choose Your Payment Method",
                        style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold,
                          fontFamily: 'Poppins',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.back();

                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Container(
                        height: 20.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _selectedValue == 1
                                    ? primary
                                    : Colors.grey,
                                width: 2.sp),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Razor Pay",
                                    style: TextStyle(
                                      color: Colors.grey, fontSize: 11.sp,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  Radio(
                                    value: 1,
                                    groupValue: _selectedValue,
                                    activeColor: primary,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$05.99",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),

                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,
                                    width: 38.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffeefbf5)),
                                    child: Text(
                                      "One Time Use Only",
                                      style:
                                      TextStyle(color: Color(0xffa0e1c1),

                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,

                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(20),
                                    //     color: Color(0xffeefbf5)
                                    // ),
                                    child: Text(
                                      "then \$02.99 per use. discard anytime",
                                      style: TextStyle(
                                        color: Colors.grey, fontSize: 12.sp,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        height: 20.h,
                        width: 100.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: _selectedValue == 1
                                    ? Colors.grey
                                    : primary,
                                width: 2.sp),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 2.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Net Banking",
                                    style: TextStyle(
                                      color: Colors.grey, fontSize: 11.sp,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  Radio(
                                    value: 2,
                                    groupValue: _selectedValue,
                                    activeColor: primary,
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedValue = value!;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$05.99",
                                    style: TextStyle(
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w100,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),

                                  // // // Radio(
                                  // // //   value: 1,
                                  // // //   groupValue: _selectedValue,
                                  // // //   onChanged: (value) {
                                  // // //     setState(() {
                                  // // //       _selectedValue = value!;
                                  // // //     });
                                  // //   },
                                  // ),
                                ],
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,
                                    width: 38.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color(0xffeefbf5)),
                                    child: Text(
                                      "One Time Use Only",
                                      style:
                                      TextStyle(color: Color(0xffa0e1c1),
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 4.h,

                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(20),
                                    //     color: Color(0xffeefbf5)
                                    // ),
                                    child: Text(
                                      "then \$02.99 per month. discard anytime",
                                      style: TextStyle(
                                        color: Colors.grey, fontSize: 12.sp,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h,),
                      InkWell(onTap:(){
                        Get.to(CheckoutPage(imgs:widget.img,name: widget.name,price: '05.99',method: _selectedValue == 1?'Razor Pay':'Net Banking',));
                      },
                        child: Container(
                          alignment: Alignment.center,
                          height: 6.h,
                          width: 80.w,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: primary
                          ),
                          child: Text("Continue to Checkout",
                            style: TextStyle(color: Colors.white, fontSize: 12.sp,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ]
      ),
    );
  }
}
