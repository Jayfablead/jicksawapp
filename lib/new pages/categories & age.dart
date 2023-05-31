import 'dart:convert';
import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';
import 'package:jicksaw/Questions/FirstQuestion.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

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
  'assets/chs/memorychs.jpg',
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
  'assets/chs/child.jpg',
  'assets/chs/teenger.jpg',
  'assets/chs/adult.jpg',
  'assets/chs/midage.jpg',
  'assets/chs/old.jpg',
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
        appBar: appbar1(
            title1: 'Select Catagory',
            press: () {},
            icn: Icon(null),
            act: () {},
            icn1: Icon(null)),
        body: SingleChildScrollView(
          child: isloading
              ? Container()
              : Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Select Your Favourite Category ',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15.sp, color: primary),
                            ),
                            Icon(
                              Icons.category_outlined,
                              color: primary,
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
                                    selectedcate =
                                        category?.allCategories?[index].id ??
                                            '';
                                  });

                                  print(
                                      'Category: ' + selectedValuei.toString());
                                },
                                child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(
                                          color:
                                              selectedi ? primary : secondary)),
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
                                              color: primary, fontSize: 14.sp)),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        selectedValuei == 0
                            ? Container()
                            : Column(
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
                                            fontSize: 15.sp, color: primary),
                                      ),
                                      Icon(
                                        Icons.person_outline_outlined,
                                        color: primary,
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
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    color: selecteda
                                                        ? primary
                                                        : secondary)),
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
                                                      color: primary,
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
                        SizedBox(height: 5.h),
                        selectedValuei == 0 || selectedagei == 0
                            ? Container()
                            : GestureDetector(
                                onTap: () {
                                  Get.to(FirstQue(
                                    catId: selectedcate,
                                    ageId: selectedagei == 1
                                        ? '18'
                                        : selectedagei == 2
                                            ? '23'
                                            : selectedagei == 3
                                                ? '28'
                                                : selectedagei == 4
                                                    ? '35'
                                                    : '36',
                                  ));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 6.5.h,
                                  width: 70.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(900),
                                      color: primary),
                                  child: Text("DONE",
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
}
