import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter_credit_card_container/flutter_credit_card_container.dart';
import 'package:get/get.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:sizer/sizer.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

TextEditingController _name = TextEditingController();
TextEditingController _num = TextEditingController();
TextEditingController _ed = TextEditingController();
TextEditingController _ey = TextEditingController();
TextEditingController _cvv = TextEditingController();

String? name;
GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _AddCardPageState extends State<AddCardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(
          title1: 'Add Card',
          press: () {
            Get.back();
          },
          icn: Icon(Icons.arrow_back_ios_new_outlined),
          act: () {},
          icn1: Icon(null)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 2.h,
            ),
            Center(
              child: Container(
                height: 25.h,
                width: 95.w,
                child: FlutterCreditCard(
                  backgroundColor: primary,
                  cardHolderName: _name.text == '' ? "*********" : _name.text,
                  cardNumber: _num.text == '' ? "********" : _num.text,
                  cvvNumber: _cvv.text == '' ? '000' : _cvv.text,
                  startMonth: '04',
                  startYears: '23',
                  endMonth: _ed.text == '' ? '00' : _ed.text,
                  endYears: _ey.text == '' ? '00' : _ey.text,
                ),
              ),
            ),
            Platform.isAndroid
                ? SizedBox(
                    height: 5.h,
                  )
                : SizedBox(
                    height: 0.h,
                  ),
            Container(
              padding: EdgeInsets.all(5.w),
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
                      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: secondary,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 7.5.h,
                      alignment: Alignment.center,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            value = _num.text;
                          });
                        },
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            letterSpacing: 2,
                            fontSize: 13.sp),
                        controller: _num,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter the Card Number";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 1.5.h),
                            errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            suffixIcon: Icon(
                              Icons.numbers,
                              color: Colors.black,
                            ),
                            hintText: "Card Number",
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
                      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: secondary,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 7.5.h,
                      alignment: Alignment.center,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            value = _name.text;
                          });
                        },
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            letterSpacing: 2,
                            fontSize: 13.sp),
                        controller: _name,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter the Name on Card ";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 1.5.h),
                            errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            suffixIcon: Icon(
                              Icons.person_outline_outlined,
                              color: Colors.black,
                            ),
                            hintText: "Name On Card",
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
                      padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: secondary,
                          ),
                          borderRadius: BorderRadius.circular(20)),
                      height: 7.5.h,
                      alignment: Alignment.center,
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {
                            value = _cvv.text;
                          });
                        },
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins',
                            letterSpacing: 2,
                            fontSize: 13.sp),
                        controller: _cvv,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter the Card CVV";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 1.5.h),
                            errorBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent),
                            ),
                            suffixIcon: Icon(
                              Icons.code,
                              color: Colors.black,
                            ),
                            hintText: "CVV",
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
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          height: 7.5.h,
                          width: 37.w,
                          alignment: Alignment.center,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                value = _ed.text;
                              });
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _ed,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 1.5.h),
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
                                  Icons.date_range_outlined,
                                  color: Colors.black,
                                ),
                                hintText: "Month",
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
                          width: 4.w,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: secondary,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          height: 7.5.h,
                          width: 37.w,
                          alignment: Alignment.center,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                value = _ey.text;
                              });
                            },
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                letterSpacing: 2,
                                fontSize: 13.sp),
                            controller: _ey,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the confirm password";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(top: 1.5.h),
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
                                  Icons.calendar_month,
                                  color: Colors.black,
                                ),
                                hintText: "Year",
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
                      ],
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        print("hiiii");
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 6.5.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(900),
                            color: primary),
                        child: Text("Add Card",
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
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }
}
