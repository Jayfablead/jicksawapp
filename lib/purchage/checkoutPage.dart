import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shoppurModal.dart';
import 'package:jicksaw/Modal/subsModal.dart';
import 'package:jicksaw/Modal/viewcard.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/AddCardPage.dart';
import 'package:jicksaw/purchage/new%20thankyoupage.dart';
import 'package:jicksaw/purchage/thanks%20puzzle.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const widget.dart';

class CheckoutPage extends StatefulWidget {
  String? name;
  String? imgs;
  String? method;
  String? price;
  String? sub;
  String? itemid;
  int? type;

  CheckoutPage(
      {Key? key,
      this.itemid,
      this.name,
      required this.type,
      this.imgs,
      this.sub,
      this.method,
      this.price})
      : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

bool isLoading = true;

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    cardviewapi();
    print(widget.type);
     print(widget.itemid) ;
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
          act: () {},
          icn1: Icon(null),
          title1: 'Checkout Page',
          press: () {
            Get.back();
          },
          icn: Icon(Icons.arrow_back_ios_new_outlined),
        ),
        body: isLoading
            ? Container()
            : Padding(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Total Amount',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                  Text(
                                    '\$ ${widget.price}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Card Option',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 14.sp),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Get.to(AddCardPage(
                                        type: widget.type,
                                        price: widget.price,
                                        name: widget.name,
                                        method: widget.method,
                                        imgs: widget.imgs,
                                        sub: widget.sub,
                                      ));
                                    },
                                    child: Text(
                                      'Edit',
                                      style: TextStyle(
                                          color: primary, fontSize: 14.sp),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    '* * * * ' +
                                        (viewcard?.cardDetails?.showCardNumber)
                                            .toString(),
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                  Text(
                                    viewcard?.cardDetails?.cardName ?? '',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height:  25.h,
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
                                children: [
                                  Text(
                                    'All Orders : ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              widget.type == 2?Text('Subscription plan'):Row(
                                      children: [
                                        Container(
                                          height: 5.h,
                                          width: 11.w,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              imageUrl: widget.imgs.toString(),
                                              progressIndicatorBuilder: (context,
                                                      url, progress) =>
                                                  CircularProgressIndicator(),
                                              errorWidget:
                                                  (context, url, error) =>
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
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                              SizedBox(
                                height: 2.h,
                              ),
                             widget.type == 2?Text(
                               'You Are Subscribing our  ${widget.method} Subscription Plan.',
                               style:
                               TextStyle(color: primary, fontSize: 15.sp),
                             ): Text(
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
                      onTap: () {
                      widget.type == 2?Subsapi(): paymentapi();
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
      ),
    );
  }

  cardviewapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'get_user_cards';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().viewcardapi(data).then((response) async {
          viewcard = viewcardModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && viewcard?.status == "success") {
            setState(() {
              isLoading = false;

              print(viewcard?.cardDetails?.cardId ?? '');
            });
          } else {
            setState(() {
              isLoading = false;

              print(viewcard?.cardDetails?.cardId ?? '');
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

  Subsapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['card_number'] = viewcard?.cardDetails?.cardNumber ?? '';
    data['expiry_month'] = viewcard?.cardDetails?.cardExpM ?? '';
    data['expiry_year'] = viewcard?.cardDetails?.cardExpY ?? '';
    data['cvv'] = viewcard?.cardDetails?.cardCvv ?? '';
    data['name'] = viewcard?.cardDetails?.cardName ?? '';
    data['price'] = widget.price.toString();
    data['action'] = 'user_subscribe';
    print(data);
    EasyLoading.show(status: 'Processing Payment ...');
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().subscribeapi(data).then((response) async {
          subs = subscribeModal.fromJson(json.decode(response.body));
          print(response.statusCode);
          print(subs?.status);
          if (response.statusCode == 200 && subs?.status == "success") {
            Get.to(
              PurchaseTYPage(
                price: widget.price,
                name: widget.name,
                method: widget.method,
                type: widget.type,
              ),
            );
            EasyLoading.showSuccess('Payment Paid Successfully!');
            Get.snackbar(
              "Subscription",
              "Purchased Successfully",
              icon: Image(image: AssetImage('assets/doe.png')),
            );
            setState(() {
              isLoading = false;

              print(viewcard?.cardDetails?.cardId ?? '');
            });
          } else {
            EasyLoading.showError('Please Use Valid Card Information');
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

  paymentapi() {
    final Map<String, String> data = {};
    data['uid'] = (usermodal?.userData?.uid).toString();
    data['item_id'] = widget.itemid.toString();
    data['card_number'] = viewcard?.cardDetails?.cardNumber ?? '';
    data['expiry_month'] = viewcard?.cardDetails?.cardExpM ?? '';
    data['expiry_year'] = viewcard?.cardDetails?.cardExpY ?? '';
    data['cvv'] = viewcard?.cardDetails?.cardCvv ?? '';
    data['name'] = viewcard?.cardDetails?.cardName ?? '';
    data['price'] = widget.price.toString();
    data['action'] = 'checkout_puzzle';
    print(data);
    EasyLoading.show(status: 'Processing Payment ...');
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().purchaseapi(data).then((response) async {
          payshop = shoppayModal.fromJson(json.decode(response.body));
          print(response.statusCode);
          print(payshop?.status);
          if (response.statusCode == 200 && payshop?.status == "success") {
            Get.to(
              ThanksPage1(
                price: widget.price,
                name: widget.name,
                method: widget.method,
                type: widget.type,
              ),
            );
            EasyLoading.showSuccess('Payment Paid Successfully!');
            Get.snackbar(
              "Puzzle Game",
              "Purchased Successfully",
              icon: Image(image: AssetImage('assets/doe.png')),
            );
            setState(() {
              isLoading = false;

              print(viewcard?.cardDetails?.cardId ?? '');
            });
          } else {
            EasyLoading.showError('Please Use Valid Card Information');
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
