import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/jigsawclipper.dart';
import 'package:jicksaw/Screen/signup.dart';
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
             color: Color.fromARGB(255, 18, 28, 36),
           
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
                  child: CircleAvatar(
                    radius: 13.w,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(
                      "assets/logo.png",
                    ),
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
                      fontSize: 14.sp,
                      fontFamily: "Orbitron"),
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
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
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
                                  fontFamily: "Orbitron",
                                  fontSize: 10.sp)),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    color: Colors.grey.shade100,
                                    fontFamily: "Orbitron",
                                    fontSize: 8.sp),
                              )),
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => mainpage2(),
                            //     ));
                            Get.offAll(mainpage2());
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
                                    fontFamily: "Orbitron",
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
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Text("Don't have an account ? ",style:TextStyle(color: Colors.grey.shade100,fontSize: 9.sp,fontFamily: "Orbitron",fontWeight: FontWeight.w400) ,),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => signup()));
                      },
                      child: Text("New Member ?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontFamily: "Orbitron",
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
