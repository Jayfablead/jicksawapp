import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/questionsmodal.dart';

import 'package:jicksaw/Questions/resultsPage.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import 'gameinfo.dart';

class FirstQue extends StatefulWidget {
  const FirstQue({Key? key}) : super(key: key);

  @override
  State<FirstQue> createState() => _FirstQueState();
}

int ans = 5;
String? op;
bool isloading = true;

class _FirstQueState extends State<FirstQue> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    ques();
    ans = 5;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: appbar1(
        title1: '',
        press: () {
          Get.to(
            Tutorial(),
          );
        },
        icn: Icon(Icons.arrow_back_ios_new_rounded),
        act: () {},
        icn1: Icon(null),
      ),
      body: SingleChildScrollView(
        child: isloading
            ? Container()
            : Center(
                child: SizedBox(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        questions?.getQuestionRandom?[0].questionTitle ?? '',
                        style: primarytxt,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      questions?.getQuestionRandom?[0].questionTitle?.length ==
                              0
                          ? Container()
                          : ListView.builder(
                              padding: EdgeInsets.symmetric(horizontal: 3.w),
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      ans = index;
                                      op = questions?.getQuestionRandom?[0]
                                          .quetionsOptions?[index].isChecked;
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 85.w,
                                    margin: EdgeInsets.only(top: 2.h),
                                    decoration: ans == index
                                        ? BoxDecoration(
                                            border: Border.all(color: primary),
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            color: secondary)
                                        : BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            color: primary),
                                    padding: EdgeInsets.all(2.h),
                                    child: Text(
                                      questions
                                              ?.getQuestionRandom?[0]
                                              .quetionsOptions?[index]
                                              .optionText ??
                                          '',
                                      style: TextStyle(
                                        fontSize: 13.sp,
                                        color: ans == index
                                            ? primary
                                            : Colors.white,
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                      SizedBox(
                        height: 6.h,
                      ),
                      ans != 5
                          ? InkWell(
                              onTap: () {
                                Get.to(ResultsPage(
                                  firstans: op,
                                ));
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 90.w,
                                margin: EdgeInsets.only(top: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                                padding: EdgeInsets.all(2.h),
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
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  ques() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'get_que_from_cata_age';
    data['catagory_id'] = '1';
    data['age'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getques(data).then((response) async {
          questions = QuestionsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && questions?.status == "success") {
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
