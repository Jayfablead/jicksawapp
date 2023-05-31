import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/FirstQuestion.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

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
int selectedValuei2 = -1;
bool selectedi = false;
bool selecteda = false;
String? selectedValue;
final List<String> imgs = [
  'assets/chs/mathchs.jpg',
  'assets/chs/triviach.jpg',
  'assets/chs/memorychs.jpg',
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

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      selectedagei2 = -1;
      selectedValuei2 = -1;
      selectedagei = 0;
      selectedValuei = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: appbar1(
          title1: 'Select Catagory',
          press: () {},
          icn: Icon(null),
          act: () {},
          icn1: Icon(null)),
      body: SingleChildScrollView(
        child: Center(
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
                  height: 55.h,
                  child: GridView.builder(
                    itemCount: imgs.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 1 / 1.25),
                    itemBuilder: (context, index) {
                      selectedi = index == selectedValuei2;
                      return InkWell(
                        onTap: () {
                          setState(() {
                            selectedValuei = index + 1;
                            selectedValuei2 = index;
                          });

                          print('Category: ' + selectedValuei.toString());
                        },
                        child: Container(
                          padding: EdgeInsets.all(2.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: selectedi ? primary : secondary)),
                          margin: EdgeInsets.all(2.w),
                          child: Column(
                            children: [
                              Container(
                                height: 15.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    imgs[index].toString(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(items[index].toString(),
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
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Select Your Age Group ',
                                textAlign: TextAlign.center,
                                style:
                                    TextStyle(fontSize: 15.sp, color: primary),
                              ),
                              Icon(
                                Icons.person_outline_outlined,
                                color: primary,
                              )
                            ],
                          ),
                          SizedBox(height: 3.h),
                          SizedBox(
                            height: 52.h,
                            child: GridView.builder(
                              itemCount: ageimgs.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 1 / 1.2),
                              itemBuilder: (context, index) {
                                selecteda = index == selectedagei2;
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedagei = index + 1;
                                      selectedagei2 = index;
                                    });

                                    print(
                                        'AgeGroup: ' + selectedagei.toString());
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(2.w),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: selecteda
                                                ? primary
                                                : secondary)),
                                    margin: EdgeInsets.all(2.w),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 15.h,
                                          width: 32.w,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
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
                                              color: primary, fontSize: 14.sp),
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
                selectedValuei == 0 || selectedagei == 0
                    ? Container()
                    : GestureDetector(
                        onTap: () {
                          Get.to(FirstQue());
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
    );
  }
}
