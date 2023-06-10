import 'dart:convert';
import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';

import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/main%20Pages/design.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:jicksaw/subscription/subscription_page.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

final List<String> items = [
  'Math Challenge',
  'Trivia Challenge',
  'Memory Challenge',
];
int selectedValuei = 0;
String? selectedcate;

int selectedValuei2 = -1;
bool selectedi = false;
bool selecteda = false;
String? selectedValue;
final List<String> imgs = [
  'assets/chs/mathchs.jpg',
  'assets/chs/memory1.png',
  'assets/chs/triviach.jpg',
];

int? selectedagei = 0;
int? selectedagei2 = -1;
final List<String> ages = [
  'Below 18',
  '18 to 23',
  '24 to 28',
  '29 to 35',
  'Above 35',
];
final List<String> ageimgs = [
  'assets/chs/child1.png',
  'assets/chs/teeneger1.png',
  'assets/chs/midage1.png',
  'assets/chs/adult1.png',
  'assets/chs/old1.png',
];
bool isloading = true;

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categori();
    setState(() {
      selectedagei2 = -1;
      selectedValuei2 = -1;
      selectedagei = 0;
      selectedValuei = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: isloading
              ? Container()
              : Center(
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
                        color: Colors.black.withOpacity(0.40),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 3.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(height: 10.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Select Your Favourite Category ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15.sp, color: Colors.white),
                                ),
                                Icon(
                                  Icons.category_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(height: 3.h),
                            SizedBox(
                              height: 24.h,
                              child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: category?.allCategories?.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 1,
                                        childAspectRatio: 1 / 0.9),
                                itemBuilder: (context, index) {
                                  selectedi = index == selectedValuei2;
                                  return InkWell(
                                    onTap: () {
                                      setState(() {
                                        selectedValuei = index + 1;
                                        selectedValuei2 = index;
                                        selectedcate = category
                                                ?.allCategories?[index].id ??
                                            '';
                                      });

                                      print('Category: ' +
                                          selectedValuei.toString());
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(4.w),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                              width: 2,
                                              color: selectedi
                                                  ? primary
                                                  : Colors.black
                                                      .withOpacity(0.8))),
                                      margin: EdgeInsets.all(2.w),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 12.h,
                                            width: 26.w,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                              child: Image.asset(
                                                imgs[index].toString(),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 2.h),
                                          Text(
                                              category?.allCategories?[index]
                                                      .catagoryName ??
                                                  '',
                                              style: TextStyle(
                                                  color: selectedi
                                                      ? primary
                                                      : Colors.black,
                                                  fontSize: 14.sp)),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(height: 6.h),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      'Select Your Age Group ',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 15.sp, color: Colors.white),
                                    ),
                                    Icon(
                                      Icons.person_outline_outlined,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                SizedBox(
                                  height: 23.h,
                                  child: GridView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: ageimgs.length,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 1,
                                            childAspectRatio: 1 / 0.9),
                                    itemBuilder: (context, index) {
                                      selecteda = index == selectedagei2;
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            selectedagei = index + 1;
                                            selectedagei2 = index;
                                          });

                                          print('AgeGroup: ' +
                                              selectedagei.toString());
                                        },
                                        child: Container(
                                          padding: EdgeInsets.all(2.w),
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  width: 2,
                                                  color: selecteda
                                                      ? primary
                                                      : Colors.black
                                                          .withOpacity(0.8))),
                                          margin: EdgeInsets.all(2.w),
                                          child: Column(
                                            children: [
                                              Container(
                                                height: 12.h,
                                                width: 26.w,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          100),
                                                  child: Image.asset(
                                                    ageimgs[index].toString(),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 2.h),
                                              Text(
                                                ages[index].toString(),
                                                style: TextStyle(
                                                    color: selecteda
                                                        ? primary
                                                        : Colors.black,
                                                    fontSize: 14.sp),
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
                            SizedBox(height: 10.h),
                            selectedValuei == 0 || selectedagei == 0
                                ? Container()
                                : GestureDetector(
                                    onTap: () {
                                      start();
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 6.5.h,
                                      width: 70.w,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(900),
                                          color: primary),
                                      child: Text("START",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              letterSpacing: 2,
                                              fontSize: 12.sp)),
                                    ),
                                  ),
                            SizedBox(
                              height: 3.h,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }

  categori() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'get_all_cat_and_age';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getcate(data).then((response) async {
          category = CatModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && category?.status == "success") {
            setState(() {
              isloading = false;
            });
          } else {}
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }

  start() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'game_start';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().startgameapi(data).then((response) async {
          profileviewmodal =
              ProfileviewModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            Get.to(design(

              cat: selectedcate,
              age: selectedagei == 1
                  ? '18'
                  : selectedagei == 2
                      ? '23'
                      : selectedagei == 3
                          ? '28'
                          : selectedagei == 4
                              ? '35'
                              : '36',
            ));
            Get.snackbar(
              "Game Started",
              "Successfully",
              icon: Image(image: AssetImage('assets/logo.png')),
              snackPosition: SnackPosition.TOP,
            );
            print("Started");
            setState(() {
              isloading = false;
            });
          } else {
            update(context, 'Subscribtion error',
                'You Don\'t Have Any Subscription a plan to play game',
                buttonname: 'Subscribe', callback: () {
              Get.to(subscription());
            });
            setState(() {
              isloading = false;
            });
          }
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
