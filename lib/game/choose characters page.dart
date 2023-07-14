import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Game%20Modals/chooseCharacterModal.dart';
import 'package:jicksaw/Modal/allpurchasedCharactersModal.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/hexcolor.dart';

class ChooseCharactersPage extends StatefulWidget {
  const ChooseCharactersPage({super.key});

  @override
  State<ChooseCharactersPage> createState() => _ChooseCharactersPageState();
}

bool isLoading = true;

class _ChooseCharactersPageState extends State<ChooseCharactersPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: 'Choose Your Character',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        body: Center(
          child: isLoading
              ? Container()
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        "Choose A Character To Show as a Your Avatar In Your Game.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontSize: 14.sp),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      SizedBox(
                        height: 78.h,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 2.h,
                            crossAxisSpacing: 2.w,
                            childAspectRatio: 0.68,
                          ),
                          shrinkWrap: true,
                          // scrollDirection: Axis.horizontal,
                          itemCount: purcharcs?.purchases?.length,

                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                // Get.to(() => GameInfo(
                                //       id: shop?.allItems?[index].itemId ?? '',
                                //     ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: HexColor.fromHex(purcharcs
                                                ?.purchases?[index]
                                                .bgColorBorder ??
                                            '')),
                                    color: HexColor.fromHex(
                                        purcharcs?.purchases?[index].bgColor ??
                                            ''),
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 4.w, vertical: 1.h),
                                margin: EdgeInsets.symmetric(horizontal: 1.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl: purcharcs?.purchases?[index]
                                                  .productImg ??
                                              '',
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
                                      height: 1.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          Text(
                                            purcharcs?.purchases?[index]
                                                    .productName ??
                                                '',
                                            style: TextStyle(
                                              color: HexColor.fromHex(purcharcs
                                                      ?.purchases?[index]
                                                      .bgColorBorder ??
                                                  ''),
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Poppins',
                                              letterSpacing: 1.5,
                                            ),
                                          ),
                                          Align(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 0.5.h),
                                                Text(
                                                  purcharcs?.purchases?[index]
                                                          .productDesc ??
                                                      '',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 13.sp,
                                                      color: Color(0xff2c2c2c)),
                                                ),
                                                SizedBox(height: 2.h),
                                                InkWell(
                                                  onTap: () {
                                                    Chooseapi(purcharcs
                                                            ?.purchases?[index]
                                                            .productId ??
                                                        '');
                                                  },
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 5.w,
                                                            vertical: 1.2.h),
                                                    decoration: BoxDecoration(
                                                      color: HexColor.fromHex(
                                                          purcharcs
                                                                  ?.purchases?[
                                                                      index]
                                                                  .bgColorBorder ??
                                                              ''),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              32.0),
                                                    ),
                                                    child: Text(
                                                      "Choose",
                                                      style: TextStyle(
                                                          color: HexColor
                                                              .fromHex(purcharcs
                                                                      ?.purchases?[
                                                                          index]
                                                                      .bgColor ??
                                                                  ''),
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 2,
                                                          fontSize: 14.sp,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  shopitems() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'user_purchased_character';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().purcharcsapi(data).then((response) async {
          purcharcs =
              allpurchasedCharactersModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && shop?.status == "success") {
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

  Chooseapi(String itemid) {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['item_id'] = itemid.toString();
    data['action'] = 'update_character';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().Choosecharacapi(data).then((response) async {
          choosecharacter =
              ChooseCharModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && choosecharacter?.status == "success") {
            print(itemid);
            Get.back();
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
