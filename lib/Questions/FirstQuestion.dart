import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/questionsmodal.dart';

import 'package:jicksaw/Questions/resultsPage.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import 'gameinfo.dart';

class FirstQue extends StatefulWidget {
  String? catId;
  String? ageId;
   FirstQue({Key? key,this.ageId,this.catId}) : super(key: key);

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
    print( '=-=-=-=-=-=-=-=-=-=-=-=-=-=-='+ widget.catId.toString());
    print('=-=-=-=-=-=-=-=-=-=-=-=-=-=-='+widget.ageId.toString());
    ques();
    ans = 5;
  }

  @override
  Widget build(BuildContext context) {
    return  
      commanScreen(isLoading: isloading,
        scaffold: Scaffold(
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
              : questions?.getQuestionRandom?.quetionsOptions?.length == 0 || questions?.getQuestionRandom?.quetionsOptions?.length == null ?Container(height: 75.h,alignment: Alignment.center,child: Text('No Questions Available For You',style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontFamily: 'Poppins',
            letterSpacing: 2,
          ),),):Center(
                  child: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          questions?.getQuestionRandom?.questionTitle ?? '',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
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
                                        questions?.getQuestionRandom?.quetionsOptions?[index]
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
          } else {  setState(() {
            isloading = false;
            print(questions?.getQuestionRandom?.quetionsOptions?.length);
          });}
        });
      } else {
        setState(() {
          isloading = false;
          print(questions?.getQuestionRandom?.quetionsOptions?.length);
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
