import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:http/http.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/Forgot%20Password.dart';
import 'package:jicksaw/Screen/initScreen.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/jigsawclipper.dart';
import 'package:jicksaw/Screen/signup.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          decoration: const BoxDecoration(
            color: bgcolor,
            // color: Colors.black,
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
                      Get.offAll(Initscreen());
                      // Navigator.pop(context);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: const Icon(
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
                  child: Container(
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
                      fontSize: 17.sp,
                      letterSpacing: 2,
                      fontFamily: 'game'),
                )),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  padding: EdgeInsets.all(3.w),
                  margin: EdgeInsets.all(5.w),
                  // height: .h,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: primary)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                          decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(20)),
                          height: 7.h,
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'game',
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2,
                                fontSize: 12.sp),
                            controller: _user,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the email";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                  color: primary,
                                )),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary),
                                ),
                                suffixIcon: const Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: "E-mail",
                                errorStyle: TextStyle(
                                    fontFamily: 'game',
                                    letterSpacing: 1,
                                    fontSize: 10.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
                                    fontSize: 11.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                          decoration: BoxDecoration(
                              color: secondary,
                              borderRadius: BorderRadius.circular(20)),
                          height: 7.h,
                          alignment: Alignment.center,
                          child: TextFormField(
                            controller: _pasa,
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.w700,
                                fontFamily: 'game',
                                letterSpacing: 2,
                                fontSize: 12.sp),
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(color: primary),
                                ),
                                suffixIcon: const Icon(
                                  Icons.lock,
                                  color: Colors.black,
                                ),
                                hintText: "Password",
                                errorStyle: TextStyle(
                                    fontFamily: 'game',
                                    letterSpacing: 1,
                                    fontSize: 10.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
                                    fontSize: 11.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Get.to(() => const Forgotpwd());
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: primary,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
                                    fontSize: 12.sp),
                              )),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            loginap();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30.0),
                                color: primary),
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
                                    fontSize: 14.sp)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Don't have an account ? ",style:TextStyle(color: Colors.grey.shade100,fontSize: 9.sp,fontFamily: 'game',fontWeight: FontWeight.w400) ,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const signup()));
                      },
                      child: Text("New Member ?",
                          style: TextStyle(
                              color: primary,
                              fontSize: 12.sp,
                              fontFamily: 'game',
                              fontWeight: FontWeight.w400)),
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }

  loginap() {
    if (_formKey.currentState!.validate()) {
      final Map<String, String> data = {};
      data['email'] = _user.text.trim().toString();
      data['password'] = _pasa.text.trim().toString();
      data['action'] = 'login_player';

      checkInternet().then((internet) async {
        if (internet) {
          authprovider().loginapi(data).then((Response response) async {
            usermodal = UserModal.fromJson(json.decode(response.body));

            if (response.statusCode == 200 && usermodal?.status == "success") {
              setState(() {
                // isLoading = false;
              });
              await SaveDataLocal.saveLogInData(usermodal!);

              Get.offAll(() => const mainpage2());
            } else {
              buildErrorDialog(
                  context, "Login Error", (usermodal?.message).toString());
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
