import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';

import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/Charpurpage.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';
import '../Widget/drawer.dart';
import 'shop2.dart';

class ShopmainPage extends StatefulWidget {
  const ShopmainPage({Key? key}) : super(key: key);

  @override
  State<ShopmainPage> createState() => _ShopmainPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game {
  String? image;
  String? name;
  Color? clr;
  String? star;
  String? price;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr,{this.price});
}

List<game> popular = [
  game("assets/math.png", "Math", Colors.deepPurple.withOpacity(0.5), 'You will Get Questions based on Maths',
      Colors.pinkAccent.shade100),
  game("assets/memory.png", "Memory", Colors.tealAccent.withOpacity(0.5), 'You will Get Questions based on Memory',
      Colors.tealAccent),
  game("assets/trivia.png", "Trivia", Colors.deepOrangeAccent.withOpacity(0.5),
      'You will Get Random Questions ', Colors.deepOrangeAccent),
];
List<game> charcters = [
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png", "Bear", Colors.deepPurple.withOpacity(0.5), 'Character',
      Colors.brown,price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png", "Lion", Colors.tealAccent.withOpacity(0.5), 'Character',
      Colors.amber,price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png", "Fox", Colors.deepOrangeAccent.withOpacity(0.5),
      'Character', Colors.deepOrangeAccent,price: '1.99'),
];
bool isLoading = true;

class _ShopmainPageState extends State<ShopmainPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewap();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        key: _scaffoldKey,
        backgroundColor: bgcolor
        // Colors.black
        ,
        drawer: drawer1(),
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Stack(
                  children: [
                    Container(
                        height: 100.h,
                        child: Image.asset(
                          'assets/wall2.webp',
                          fit: BoxFit.fitHeight,
                        )),
                    Container(
                      height: 100.h,
                      color: Colors.black.withOpacity(0.20),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 6.h,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {

                                      _scaffoldKey.currentState?.openDrawer();
                                    },
                                    icon: Icon(
                                      Icons.menu_rounded,
                                      color: primary,
                                    )),
                                SizedBox(
                                  width: 30.w,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Welcome Back ${profileviewmodal?.profileViewPlayer?.name}",
                                  style: TextStyle(
                                    wordSpacing: 3,
                                    letterSpacing: 1,
                                    color: Colors.white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  height: 5.h,
                                  width: 10.w,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: profileviewmodal
                                              ?.profileViewPlayer?.profilePic ??
                                          '',
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/user.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Games',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                  ),
                                ),

                              ],
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                               height: 22.h,
                              child: GridView.builder(scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 1,
                                   mainAxisSpacing: 2.h,
                                   childAspectRatio: 1,

                                 ),
                                shrinkWrap: true,
                                // scrollDirection: Axis.horizontal,
                                itemCount: shop?.allItems?.length,

                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(() => GameInfo(
                                            id: shop?.allItems?[index].itemId ??
                                                '',
                                          ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: popular[index].btnclr,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.w, vertical: 1.h),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 1.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 10.h,
                                            width: 20.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: CachedNetworkImage(
                                                fit: BoxFit.cover,
                                                imageUrl: shop?.allItems?[index]
                                                        .itemLogo ??
                                                    '',
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
                                            height: 1.h,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                Text(
                                                  shop?.allItems?[index]
                                                          .itemName ??
                                                      '',
                                                  style: appname,
                                                ),
                                                Align(
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        '\$ ${shop?.allItems?[index].price ?? ''}',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2c2c2c)),
                                                      ),
                                                      SizedBox(height: 0.5.h),
                                                      Row(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            shop?.allItems?[index]
                                                                    .ratings ??
                                                                '',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff2c2c2c)),
                                                          ),
                                                          SizedBox(
                                                            width: 1.w,
                                                          ),
                                                          Text(
                                                            '★',
                                                            style: TextStyle(
                                                              color: Color(
                                                                  0xff8f8d8d),
                                                            ),
                                                          ),
                                                        ],
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
                            ),SizedBox(
                              height: 2.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Characters',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                  ),
                                ),

                              ],
                            ),
                            Divider(
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                               height: 22.h,
                              child: GridView.builder(scrollDirection: Axis.horizontal,
                                padding: EdgeInsets.zero,
                                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                   crossAxisCount: 1,
                                   mainAxisSpacing: 2.h,
                                   childAspectRatio: 1,

                                 ),
                                shrinkWrap: true,
                                // scrollDirection: Axis.horizontal,
                                itemCount: charcters.length,

                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
Get.to(CharPurchased(pic: charcters[index].image,));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: charcters[index].btnclr,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.w, vertical: 1.h),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 1.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 10.h,
                                            width: 20.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: CachedNetworkImage(
                                                fit: BoxFit.cover,
                                                imageUrl: charcters[index].image.toString(),
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
                                            height: 1.h,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Column(
                                              children: [
                                                Text(
                                                  charcters[index].name.toString(),
                                                  style: appname,
                                                ),
                                                Align(
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Text(
                                                        '\$ ${charcters[index].price ?? ''}',
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2c2c2c)),
                                                      ),
                                                      SizedBox(height: 0.5.h),
                                                      Text(
                                                        charcters[index].star.toString(),
                                                        style: TextStyle(
                                                            color: Color(
                                                                0xff2c2c2c)),
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
                  ],
                ),
              ),
      ),
    );
  }

  viewap() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'profile_view_player';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().profileviewapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {}
        });
      } else {
        setState(() {
          isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }

  shopitems() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'all_items';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().shopapi(data).then((response) async {
          shop = shopitemModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && shop?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {}
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
