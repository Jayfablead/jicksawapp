import 'package:flutter/material.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:sizer/sizer.dart';

class question extends StatefulWidget {
  const question({Key? key}) : super(key: key);

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          SizedBox(height: 7.h,),
          Container(padding: EdgeInsets.symmetric(horizontal: 3.w),
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            width: 90.w,
            height: 6.h,
            decoration: BoxDecoration(
              border: Border.all(width: 1.0,color: Colors.black),
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/coin.webp',width: 8.w,),
                        Text('450'),
                      ],
                    ),
                    SizedBox(width: 2.w,),
                    Row(
                      children: [
                        Image.asset('assets/diamond.png',width: 8.w,),
                        Text('84'),
                      ],
                    ),
                    SizedBox(width: 2.w,),

                    Row(
                      children: [
                        Image.asset('assets/heart.png',width: 8.w,),
                        Text('3'),
                      ],
                    ),
                    SizedBox(width: 2.w,),
                  ],
                ),
                Icon(Icons.close)
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Container(
                height: 3.h,
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                  color: primary,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(0.0),bottomLeft: Radius.circular(20.0))
                ),
              ),
              Container(
                height: 3.h,
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(0.0),topRight: Radius.circular(20.0),bottomLeft: Radius.circular(0.0),bottomRight: Radius.circular(20.0))
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
