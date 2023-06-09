import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/jigsawclipper.dart';

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
                      height: 7.h,
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
                                    return "Please enter the email";
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
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    hintText: "E-mail",
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
                                forgotpass();
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
      data['forgotEmail'] = _user.text.trim().toString();

      data['action'] = 'forgot_password';
print(data);
      checkInternet().then((internet) async {
        print(internet);
        if (internet) {
          authprovider().forgotpassapi(data).then(( response) async {
            print(usermodal?.status);
            usermodal = UserModal.fromJson(json.decode(response.body));
            if (response.statusCode == 200 && usermodal?.status == "success") {

              buildErrorDialog(context, 'done', 'Check Your Mail');
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
          buildErrorDialog(context, 'Error', "Internet Required");
        }
      });
    }
  }
}
