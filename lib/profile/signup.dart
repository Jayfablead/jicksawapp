import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

// import 'package:get/get_core/src/get_main.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Screen/startpage.dart';
import 'package:jicksaw/profile/login.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/Widget/sharedpreferance.dart';
import 'package:jicksaw/main%20Pages/categories%20&%20age.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart';

import '../Widget/const widget.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _user = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pasa = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _conf = TextEditingController();
  TextEditingController _age = TextEditingController();
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
            color: bgcolor
            // Colors.black
            ,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 2.5.h, top: 2.5.h),
                  child: InkWell(
                    onTap: () {
                      Get.back();
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
                Center(
                  child: Container(
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
                    fontFamily: 'Poppins',
                  ),
                )),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  padding: EdgeInsets.all(5.w),
                  margin: EdgeInsets.all(5.w),
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: primary)),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                     
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _user,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the user name";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                               
                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                                hintText: "User Name",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                     
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _email,
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              String p = "[a-zA-Z0-9\+\.\_\%\-\+]{1,256}" +
                                  "\\@" +
                                  "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}" +
                                  "(" +
                                  "\\." +
                                  "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" +
                                  ")+";
                              //Convert string p to a RegEx
                              RegExp regExp = RegExp(p);
                              if (value!.isEmpty) {
                                return "Please enter the Email";
                              } else {
                                //If email address matches pattern
                                if (regExp.hasMatch(value)) {
                                  return null;
                                } else {
                                  //If it doesn't match
                                  return 'Email is not valid';
                                }
                              }
                            },
                            decoration: InputDecoration(
                               
                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: Icon(
                                  Icons.email_outlined,
                                  color: Colors.black,
                                ),
                                hintText: "Email",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                              padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                     
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _age,
                            keyboardType: TextInputType.numberWithOptions(),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the Age";
                              }
                            },
                            decoration: InputDecoration(
                               
                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: Icon(
                                  Icons.person_outline_outlined,
                                  color: Colors.black,
                                ),
                                hintText: "Age",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                         
                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _phone,
                            keyboardType: TextInputType.phone,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the phone number";
                              } else if (value.length < 10) {
                                return "Please enter 1o digit number";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                
                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: Icon(
                                  Icons.phone,
                                  color: Colors.black,
                                ),
                                hintText: "Phone number",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),

                          alignment: Alignment.center,
                          child: TextFormField(
                            obscureText: visible,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _pasa,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(

                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visible = !visible;
                                      print(visible);
                                      print('Ouch');
                                    });
                                  },
                                  icon: visible
                                      ? Icon(
                                          Icons.visibility,
                                          size: 15.sp,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          size: 15.sp,
                                          color: Colors.black,
                                        ),
                                ),
                                hintText: "Password",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.5.w, vertical: 1.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          alignment: Alignment.center,
                          child: TextFormField(
                            obscureText: visible,
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _conf,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the confirm password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(

                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      visible = !visible;
                                      print(visible);
                                      print('Ouch');
                                    });
                                  },
                                  icon: visible
                                      ? Icon(
                                          Icons.visibility,
                                          size: 15.sp,
                                          color: Colors.black,
                                        )
                                      : Icon(
                                          Icons.visibility_off,
                                          size: 15.sp,
                                          color: Colors.black,
                                        ),
                                ),
                                hintText: " Confirm password",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 13.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black87,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            print("hiiii");
                            signupap();
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 6.5.h,
                            width: 70.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(900),
                                color: primary),
                            child: Text("Sign Up",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 12.sp)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Don't have an account ? ",style:TextStyle(color: Colors.grey.shade100,fontSize: 9.sp,fontFamily: 'Poppins',fontWeight: FontWeight.w400) ,),
                    TextButton(
                      onPressed: () {
                        Get.offAll(login());
                      },
                      child: Text("Already Member ?",
                          style: TextStyle(
                              color: primary,
                              fontSize: 12.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400)),
                    )
                  ],
                ),
                SizedBox(
                  height: 2.h,
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
      data['email'] = _email.text.trim().toString();
      data['password'] = _pasa.text.trim().toString();
      data['action'] = 'login_player';

      checkInternet().then((internet) async {
        if (internet) {
          authprovider().loginapi(data).then((response) async {
            usermodal = UserModal.fromJson(json.decode(response.body));

            if (response.statusCode == 200 && usermodal?.status == "success") {
              setState(() {
                // isLoading = false;
              });
              await SaveDataLocal.saveLogInData(usermodal!);

              Get.offAll(() => Startpage());
            } else {
              buildErrorDialog(
                  context, "Login Error", (usermodal?.message).toString());
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

  signupap() {
    if (_formKey.currentState!.validate()) {
      print("6467");
      final Map<String, String> data = {};
      data['email'] = _email.text.trim().toString();
      data['password'] = _pasa.text.trim().toString();
      data['confirm_password'] = _conf.text.trim().toString();
      data['username'] = _user.text.trim().toString();
      data['phone'] = _phone.text.trim().toString();
      data['age'] = _age.text.trim().toString();
      data['action'] = 'signup_player';
      print(data);
      checkInternet().then((internet) async {
        if (internet) {
          authprovider().signupapi(data).then((response) async {
            usermodal = UserModal.fromJson(json.decode(response.body));
            print(usermodal?.status);
            if (response.statusCode == 200 && usermodal?.status == "success") {
              _pasa.text == _conf.text
                  ? loginap()
                  : buildErrorDialog(context, "Password Error",
                      (usermodal?.message).toString());
            } else {
              buildErrorDialog(
                  context, "Signup Error", (usermodal?.message).toString());
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
