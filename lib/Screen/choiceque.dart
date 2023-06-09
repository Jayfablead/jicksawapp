import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/main%20Pages/congratulation.dart';
import 'package:jicksaw/main%20Pages/game%20over%20page.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:sizer/sizer.dart';

import '../Modal/questionsmodal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class choceque extends StatefulWidget {
  String? catId;
  String? ageId;

  choceque({Key? key, this.ageId, this.catId}) : super(key: key);

  @override
  State<choceque> createState() => _chocequeState();
}

int ans = 5;
bool isloading = true;
String? op;

class _chocequeState extends State<choceque> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ques();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
        body: isloading
            ? Container()
            : questions?.getQuestionRandom?.quetionsOptions?.length == null || questions?.getQuestionRandom?.quetionsOptions?.length == 0|| questions?.getQuestionRandom?.quetionsOptions?.length == null ?Container(height: 75.h,alignment: Alignment.center,child: Text('No Questions Available For You',style: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
          fontFamily: 'Poppins',
          letterSpacing: 2,
        ),),):Column(
          children: [
            SizedBox(
              height: 7.h,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              width: 90.w,
              height: 6.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(color: secondary, offset: Offset(0, 1.5.w))
                ],
                border: Border.all(width: 1.0, color: Colors.black),
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/splash/collection.png',
                            width: 8.w,
                          ),
                          Text('450'),
                        ],
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/splash/gamepad.png',
                            width: 8.w,
                          ),
                          Text('84'),
                        ],
                      ),
                      SizedBox(
                        width: 2.w,
                      ),

                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 1.w),

                    width: 9.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(90),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                        imageUrl: (profileviewmodal
                            ?.profileViewPlayer?.profilePic)
                            .toString(),
                        progressIndicatorBuilder:
                            (context, url, progress) =>
                            CircularProgressIndicator(),
                        errorWidget: (context, url, error) => Image.asset(
                          'assets/user.png',
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 7.h,
            ),


            Container(
              width: 85.w,
              padding: EdgeInsets.all(4.h),
              margin: EdgeInsets.all(3.w),
              decoration: BoxDecoration(
                border: Border.all(color: primary),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text(
                    questions?.getQuestionRandom?.questionTitle ?? '',
                    style: TextStyle(
                        fontSize: 13.sp,
                        color: primary,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: questions?.getQuestionRandom?.quetionsOptions?.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      ans = index;
                      op = questions?.getQuestionRandom?.quetionsOptions?[index].isChecked;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 60.w,
                    margin:
                    EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
                    decoration: ans == index
                        ? BoxDecoration(
                        border: Border.all(color: primary),
                        borderRadius: BorderRadius.circular(90),
                        color: secondary)
                        : BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(1.5.h),
                    child: Text(
                      questions?.getQuestionRandom?.quetionsOptions?[index].optionText ?? '',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: ans == index ? primary : Colors.white,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                );
              },
            ),
            Image.asset('assets/mon.png',
                height: 23.h, width: 100.w, fit: BoxFit.cover),
            SizedBox(height: 1.5.h,),
            ans != 5
                ? InkWell(
              onTap: () {op == '1' ?Get.off(congratulation(age: widget.ageId,cat: widget.catId, type: 'choice',)):Get.offAll(GameOver());},
              child: Container(
                alignment: Alignment.center,
                width: 82.w,
                margin: EdgeInsets.only(top: 0.5.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: primary),
                padding: EdgeInsets.all(1.5.h),
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 14.sp),
                ),
              ),
            )
                : Container(),
            SizedBox(
              height: 1.h,
            ),

          ],
        ),
      ),
    );
  }

  ques() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'get_que_from_cata_age';
    data['catagory_id'] = widget.catId.toString();
    data['age'] = widget.ageId.toString();
    print("-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=  ${data}");
    print(questions?.getQuestionRandom?.quetionsOptions?.length);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getques(data).then((response) async {
          questions = QuestionsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && questions?.status == "success") {
            print(questions?.getQuestionRandom?.quetionsOptions?.length);
            setState(() {
              isloading = false;
            });
          } else {
            setState(() {
              isloading = false;
              print(questions?.getQuestionRandom?.quetionsOptions?.length);
            });
          }
        });
      } else {
        setState(() {
          isloading = false;
          print(questions?.getQuestionRandom?.quetionsOptions?.length);
        });
        buildErrorDialog(context, 'Error', "Internet Required");
      }
    });
  }
}
