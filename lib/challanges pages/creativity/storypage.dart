import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../const widget.dart';

class Storypage extends StatefulWidget {
  const Storypage({Key? key}) : super(key: key);

  @override
  State<Storypage> createState() => _StorypageState();
}

TextEditingController _controller = TextEditingController();

class _StorypageState extends State<Storypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      bgcolor
// Colors.black
      ,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: primary,
                        )),
                    Text(
                      'Creativity Challenge',
                      style: primarytxt1,
                    ),
                    SizedBox(
                      width: 7.w,
                    )
                  ],
                ),
                SizedBox(
                  height: 6.h,
                ),
                SizedBox(
                    width: 90.w,
                    child: Text(
                      'Question :',
                      textAlign: TextAlign.justify,
                      style: primarytxt,
                    )),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                    width: 90.w,
                    child: Text(
                      'Write a short story on \'What if you Can\'t Die\'.',
                      textAlign: TextAlign.justify,
                      style: primarytxtbig,
                    )),
                SizedBox(
                  height: 5.h,
                ),
                TextField(
                  maxLines: 15,
                  style: TextStyle(
                      color: Colors.black,
                    fontFamily: 'Poppins',
                      letterSpacing: 2),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: primary),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey[500],
                    fontFamily: 'Poppins',
                    ),
                    hintText: "Type your story here",
                  ),
                ),
                SizedBox(
                  height: 1.5.h,
                ),
                InkWell(
                  onTap: () {

                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(1.5.h),
                    child: Text(
                      'Done',
                      style: TextStyle(
                        fontSize: 13.sp,
                        color: Colors.white,

                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
