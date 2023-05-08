import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/Forgot%20Password.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
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
                          color: Colors.white,
                        ),
                        height: 4.7.h,
                        width: 9.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            border: Border.all(color: Colors.white))),
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
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      letterSpacing: 2,
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
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: Colors.white)),
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
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "User Name",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: 'game',
                                  letterSpacing: 2,
                                  fontSize: 11.sp)),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextFormField(
                          controller: _pasa,
                          keyboardType: TextInputType.text,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter the password";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              suffixIcon: Icon(
                                Icons.person,
                                color: Colors.grey.shade100,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Colors.grey.shade100,
                                  fontFamily: 'game',
                                  letterSpacing: 2,
                                  fontSize: 11.sp)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {
                                Get.to(()=>Forgotpwd());
                              },
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.grey.shade100,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
                                    fontSize: 10.sp),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => mainpage2(),
                            //     ));
                            Get.offAll(()=>mainpage2());
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 5.h,
                            width: 30.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: Colors.white)),
                            child: Text("Login",
                                style: TextStyle(
                                    color: Colors.grey.shade100,
                                    fontFamily: 'game',
                                    letterSpacing: 2,
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Don't have an account ? ",style:TextStyle(color: Colors.grey.shade100,fontSize: 9.sp,fontFamily: 'game',fontWeight: FontWeight.w400) ,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text("New Member ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
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
}
