import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/jigsawclipper.dart';
import 'package:jicksaw/Screen/signup.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class Forgotpwd extends StatefulWidget {
  const Forgotpwd({Key? key}) : super(key: key);

  @override
  State<Forgotpwd> createState() => _ForgotpwdState();
}

class _ForgotpwdState extends State<Forgotpwd> {
  TextEditingController _user = TextEditingController();
  TextEditingController _pasa = TextEditingController();
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
                        height: 20.h,
                        width: 90.w,

                        child: Lottie.asset('assets/lin.json'),
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
                              fontSize: 14.sp,
                              fontFamily: 'game'),
                        )),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      padding: EdgeInsets.all(5.w),
                      margin: EdgeInsets.all(5.w),
                      // height: .h,
                      width: 90.w,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(color: Colors.black)),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _user,
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter the user name";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Colors.black,
                                  ),
                                  hintText: "Email Address",
                                  hintStyle: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'game',
                                      fontSize: 10.sp)),
                            ),
                            SizedBox(height: 2.h,),
                            GestureDetector(
                              onTap: () {
                                forgotpass();
                                // Get.offAll(()=>mainpage2());
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 5.h,
                                width: 32.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(color: Colors.black)),
                                child: Text("Forgot Password",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'game',
                                        fontSize: 10.sp)),
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
      data['forgotEmail'] = _user.text.trim().toString();

      data['action'] = 'forgot_password';

      checkInternet().then((internet) async {
        if (internet) {
          authprovider().forgotpassapi(data).then(( response) async {
            usermodal = UserModal.fromJson(json.decode(response.body));
            if (response.statusCode == 200 && usermodal?.status == "success") {
              setState(() {
                // isLoading = false;
              });
              Get.offAll(()=>mainpage2());
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
