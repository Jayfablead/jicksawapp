import 'package:flutter/material.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:sizer/sizer.dart';

class question extends StatefulWidget {
  const question({Key? key}) : super(key: key);

  @override
  State<question> createState() => _questionState();
}
int ans = 5;
class _questionState extends State<question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 7.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 90.w,
            height: 6.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(color: secondary, offset: Offset(0, 1.5.w))
              ],
              border: Border.all(width: 1.0, color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/coin.webp',
                          width: 8.w,
                        ),
                        Text('450'),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/diamond.png',
                          width: 8.w,
                        ),
                        Text('84'),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/heart.png',
                          width: 8.w,
                        ),
                        Text('3'),
                      ],
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 4.h,
                    width: 4.h,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black45, width: 2.0),
                        shape: BoxShape.circle),
                    child: Icon(
                      Icons.close,
                      color: Colors.black,
                      size: 14.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container(
            height: 1.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: primary1.withOpacity(0.55),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                Container(
                  height: 1.h,
                  width: 65.w,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.5.h,
          ),
          Text(
            'Questions 9 of 10',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: 1.h,
          ),
          Container(
            width: 85.w,
            padding: EdgeInsets.all(4.h),
            margin: EdgeInsets.all(3.w),
            decoration: BoxDecoration(
              border: Border.all(color: primary),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Text(
                  'What is Flutter & Who invented Flutter & When ?',
                  style: TextStyle(fontSize: 13.sp,color: primary,fontFamily: 'Poppins',fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListView.builder(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 4,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    ans = index;

                  });
                },
                child: Container(

                  alignment: Alignment.center,
                  width: 60.w,
                  margin: EdgeInsets.only(top: 1.h,left: 5.w,right: 5.w),
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
                  padding: EdgeInsets.all(1.5.h),
                  child: Text(

                        'hello ${index}',
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
          Image.asset('assets/mon.png',height: 20.h,width: 100.w,fit: BoxFit.cover),
          ans != 5
              ? InkWell(
            onTap: () {

            },
            child: Container(
              alignment: Alignment.center,
              width: 82.w,
              margin: EdgeInsets.only(top: 0.5.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: primary),
              padding: EdgeInsets.all(1.5.h),
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
          SizedBox(height: 1.h,),
          Text('Skip for now',style: TextStyle(fontFamily: 'Poppins',fontSize: 12.sp),)
        ],
      ),
    );
  }
}
