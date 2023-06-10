import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Modal/changepwModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/profile/login.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/jigsawclipper.dart';

import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class Changepwd extends StatefulWidget {
  const Changepwd({Key? key}) : super(key: key);

  @override
  State<Changepwd> createState() => _ChangepwdState();
}

class _ChangepwdState extends State<Changepwd> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pasa = TextEditingController();
  TextEditingController _confpasa = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity.h,
              width: double.infinity.w,
              decoration: BoxDecoration(
                color: bgcolor,

              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.5.h),
                      child: InkWell(
                        onTap: () {
                          Get.back();
                          // Navigator.pop(context);
                        },
                        child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.black,
                            ),
                            height: 4.7.h,
                            width: 9.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(90),
                                border: Border.all(color: Colors.black))),
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Center(
                      child:  Container(
                        height: 25.h,
                        width: 100.w,

                        child: Lottie.asset('assets/main.json'),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Center(
                        child: Text(
                          "Jigsaw Puzzle",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 17.sp,
                            letterSpacing: 2,
                            fontFamily: 'Poppins',),
                        )),
                    SizedBox(
                      height: 5.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.w),
                      margin: EdgeInsets.all(5.w),
                      // height: .h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color:primary)),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7.5.h,
                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 2,
                                ),
                                controller: _user,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter old password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 1.5.h),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        )),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                    ),
                                    errorBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),),
                                    suffixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.black,
                                    ),
                                    hintText: "Old Password",
                                    errorStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 1,
                                        fontSize: 11.sp),
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 13.sp)),
                              ),
                            ),SizedBox(height: 2.h,),
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7.5.h,
                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 2,
                                ),
                                controller: _pasa,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter new password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 1.5.h),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        )),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                    ),
                                    errorBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),),
                                    suffixIcon: const Icon(
                                      Icons.lock_open,
                                      color: Colors.black,
                                    ),
                                    hintText: "Please enter new password",
                                    errorStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 1,
                                        fontSize: 11.sp),
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 13.sp)),
                              ),
                            ),SizedBox(height: 2.h,),
                            Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                              decoration: BoxDecoration(
                                  border: Border.all(color: secondary,),
                                  borderRadius: BorderRadius.circular(20)),
                              height: 7.5.h,
                              alignment: Alignment.center,
                              child: TextFormField(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.sp,
                                  fontFamily: 'Poppins',
                                  letterSpacing: 2,
                                ),
                                controller: _confpasa,
                                keyboardType: TextInputType.text,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Please enter confirm password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(contentPadding: EdgeInsets.only(top: 1.5.h),
                                    enabledBorder: const UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        )),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                    ),
                                    errorBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),),
                                    suffixIcon: const Icon(
                                      Icons.lock_open,
                                      color: Colors.black,
                                    ),
                                    hintText: "Confirm Password",
                                    errorStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 1,
                                        fontSize: 11.sp),
                                    hintStyle: TextStyle(
                                        color: Colors.black87,
                                        fontFamily: 'Poppins',
                                        letterSpacing: 2,
                                        fontSize: 13.sp)),
                              ),
                            ),
                            SizedBox(height: 5.h,),
                            GestureDetector(
                              onTap: () {
                              _pasa.text == _confpasa.text ?forgotpass():buildErrorDialog(context, 'Error', 'New password and Confirm password should be same');
                                print('object your honor');
                                // Get.offAll(()=>mainpage2());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 6.5.h,
                                width: 70.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30.0),
                                    color:primary
                                ),
                                child: Text("Forgot Password",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Poppins',
                                        fontSize: 12.sp)),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),

                  ],
                ),
              ),
            )
          ],
        ));
  }
  forgotpass(){
    if (_formKey.currentState!.validate()) {
      final Map<String, String> data = {};
      data['uid'] = usermodal?.userData?.uid ?? "";
      data['old_pass'] = _user.text.trim().toString();
      data['new_pass'] = _pasa.text.trim().toString();

      data['action'] = 'change_password';
      print(data);
      checkInternet().then((internet) async {
        print(internet);
        if (internet) {
          authprovider().changepass(data).then(( response) async {
            print(usermodal?.status);
            changepw = changepwModal.fromJson(json.decode(response.body));
            if (response.statusCode == 200 && changepw?.status == "success") {

              Get.offAll(login());
              Get.snackbar(
                "Password Changed",
                "Successfully",
                icon: Image(image: AssetImage('assets/logo.png')),
                snackPosition: SnackPosition.TOP,
              );
              setState(() {
                // isLoading = false;
              });


            } else {


            }
          });
        } else {
          setState(() {
            // isLoading = false;
          });
          buildErrorDialog(context, 'Error', "Internate Required");
        }
      });
    }
  }
}
