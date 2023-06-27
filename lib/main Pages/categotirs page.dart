import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/categryModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:sizer/sizer.dart';

import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class Categ extends StatefulWidget {
  const Categ({super.key});

  @override
  State<Categ> createState() => _CategState();
}

bool isLoading = true;

class game {
  String? image;
  String? name;
  Color? clr;
  String? star;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr);
}

List<game> popular = [
  game(
      "https://www.origastock.com/images/3d-characters/download/11.png",
      "Math",
      Colors.deepPurple.withOpacity(0.1),
      'You will Get Questions based on Maths',
      Colors.deepPurple), game(
      "https://www.origastock.com/images/3d-characters/download/11.png",
      "Math",
      Colors.deepPurple.withOpacity(0.1),
      'You will Get Questions based on Maths',
      Colors.deepPurple),
  game(
      "https://www.origastock.com/images/3d-characters/download/45.png",
      "Memory",
      Colors.tealAccent.withOpacity(0.2),
      'You will Get Questions based on Memory',
      Colors.tealAccent),
  game(
      "https://www.origastock.com/images/3d-characters/download/55.png",
      "Trivia",
      Colors.deepOrangeAccent.withOpacity(0.2),
      'You will Get Random Questions ',
      Colors.deepOrangeAccent),
];

class _CategState extends State<Categ> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    CategApi();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: '',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        body: isLoading
            ? Container()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 22.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 70.h,
                      padding: EdgeInsets.symmetric(horizontal: 3.w),
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return Stack(
                              children: [
                                Container(
                                  height: 18.h,
                                  width: 80.w,
                                  margin: EdgeInsets.symmetric(
                                    vertical: 3.h,
                                  ),
                                  decoration: BoxDecoration(
                                    color:Color(int.parse(categories?.allCategories?[index].catagoryBg ?? '')),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        height: 15.h,
                                        width: 30.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl: (categories
                                                ?.allCategories?[index]
                                                .catagoryIcon)
                                                .toString(),
                                            progressIndicatorBuilder: (context,
                                                    url, progress) =>
                                                Center(
                                                    child:
                                                        CircularProgressIndicator()),
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
                                        width: 40.w,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              (categories?.allCategories?[index]
                                                      .catagoryName)
                                                  .toString(),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            Text(
                                              (categories?.allCategories?[index]
                                                      .catagoryDesc)
                                                  .toString(),
                                              style: TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 16.h,
                                  left: 71.w,
                                  child: InkWell(
                                    onTap: () {
                                      print(categories?.allCategories?[index].catagoryName);
                                    },
                                    child: Container(
                                      height: 6.h,
                                      width: 13.w,
                                      decoration: BoxDecoration(
                                          color: Color(int.parse(categories?.allCategories?[index].catagoryButtonColor ?? '')),
                                          borderRadius:
                                              BorderRadius.circular(80)),
                                      child: Icon(
                                        Icons.play_arrow_rounded,
                                        color: Colors.white,
                                        size: 25.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                          itemCount: categories?.allCategories?.length),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.home_rounded,
                            size: 27.sp,
                            color: primary,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  CategApi() {
    final Map<String, String> data = {};
    // data['uid'] = (usermodal?.userData?.uid).toString();
    data['action'] = 'get_all_cat_and_age';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().CategApi(data).then((response) async {
          categories = categModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && categories?.status == "success") {
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
