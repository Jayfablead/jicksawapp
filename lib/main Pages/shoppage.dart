import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../other/const widget.dart';
import '../drawer.dart';
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
  String? type;
  String? star;
  String? comp;

  game(this.image, this.name, this.type, this.star, this.comp);
}


List<game> popular = [
  game(
      "https://cdn.jim-nielsen.com/ios/512/jigsaw-puzzles-puzzle-games-2021-05-11.png",
      "Star Image",
      '',
      '3',
      'Star'),
  game("https://m.media-amazon.com/images/I/61Q2CtZJDqL.png", "Universe Image", '', '4',
      'Universe'),
  game(
      "https://thumbnail.imgbin.com/2/12/7/imgbin-jigty-jigsaw-puzzles-candy-crush-jelly-saga-android-blue-puzzle-icon-KbQRmqHQqYHpmWbD3zDhCDivi_t.jpg",
      "Actor Image",
      '',
      '3',
      'Actor'),
  game("https://cdn-icons-png.flaticon.com/512/229/229800.png", "Nature Image", '',
      '5', 'Nature'),

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
    return commanScreen(isLoading: isLoading ,
      scaffold: Scaffold(
        key: _scaffoldKey,
        backgroundColor:
        bgcolor
        // Colors.black
        ,
        drawer: drawer1(),
        body: isLoading?Container():SingleChildScrollView(
          child: Stack(
            children: [
              Container(height: 100.h,child: Image.asset('assets/wall2.webp',fit: BoxFit.fitHeight,)),
              Container(height: 100.h,color: Colors.black.withOpacity(0.20),),
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
                                print('object');
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
                               fontFamily: 'Poppins',),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 1.w),
                            height: 5.h,
                            width: 10.w,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(90),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: profileviewmodal?.profileViewPlayer?.profilePic ?? '',
                                progressIndicatorBuilder: (context, url, progress) =>
                                    CircularProgressIndicator(),
                                errorWidget: (context, url, error) => Image.asset(
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
                            'Popular',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'VIEW MORE',
                                style: TextStyle(
                                  color: Colors.deepOrange,
                                  fontSize: 11.sp,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 2,
                                ),
                              )),
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
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: shop?.allItems?.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(()=>GameInfo(
                                  Image: popular[index].image,
                                  name: popular[index].name,
                                  Star: popular[index].star,
                                  comp: popular[index].comp,
                                ));
                              },
                              child: Container(decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)
                              ),
                                padding: EdgeInsets.symmetric(horizontal: 4.w,vertical: 1.h),
                                margin: EdgeInsets.symmetric(horizontal:1.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 10.h,
                                      width: 20.w,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20)),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(15),
                                        child: CachedNetworkImage(
                                          fit: BoxFit.cover,
                                          imageUrl: shop?.allItems?[index].itemLogo ?? '',
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
                                            shop?.allItems?[index].itemName ?? '',
                                            style: appname,
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                               '\$ ${shop?.allItems?[index].price ?? ''}',
                                                style: TextStyle(
                                                    color: Color(0xff2c2c2c)),
                                              ),
                                              SizedBox(height: 0.5.h),
                                              Row(
                                                children: [
                                                  Text(
                                                    popular[index].star.toString(),
                                                    style: TextStyle(
                                                        color: Color(0xff2c2c2c)),
                                                  ),
                                                  SizedBox(
                                                    width: 1.w,
                                                  ),
                                                  Text(
                                                    '★',
                                                    style: TextStyle(
                                                      color: Color(0xff8f8d8d),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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

                      // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     Text('Picked ups',style: secondarytxtwhite,),
                      //     TextButton(onPressed: (){}, child: Text('view more',style: secondarytxt,)),
                      //   ],
                      // ),
                      SizedBox(height: 1.h,),
                      Divider(
                        color: Colors.white,
                      ),
                      SizedBox(height: 1.h,),

                      SizedBox(
                        height: 40.h,
                        child: ListView.builder(
                          // scrollDirection: Axis.horizontal,
                          itemCount: popular.length,padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Get.to(()=>GameInfo(
                                  Image: popular[index].image,
                                  name: popular[index].name,
                                  Star: popular[index].star,
                                  comp: popular[index].comp,
                                ));
                              },
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                padding: EdgeInsets.all(1.h),
                                margin: EdgeInsets.symmetric(vertical: 0.5.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 6.h,
                                          width: 12.w,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(20)),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(15),
                                            child: CachedNetworkImage(
                                              fit: BoxFit.cover,
                                              imageUrl: popular[index].image.toString(),
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
                                        SizedBox(
                                          width: 32.w,
                                          child: Row(
                                            children: [
                                              SizedBox(width: 30.w,
                                                child: Text(
                                                  popular[index].name.toString(),
                                                  style: appname,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          popular[index].star.toString(),
                                          style: TextStyle(color: Color(0xff8f8d8d)),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          '★',
                                          style: TextStyle(
                                            color: Color(0xff8f8d8d),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      '\$ 01.99',
                                      style: TextStyle(color: Color(0xff8f8d8d)),
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
          shop =
              shopitemModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              shop?.status == "success") {
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
