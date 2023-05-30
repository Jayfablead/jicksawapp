import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class ThankyouPage extends StatefulWidget {
  String? plan;
  String? price;
  String? subs;
   ThankyouPage({Key? key,this.plan,this.price,this.subs}) : super(key: key);

  @override
  State<ThankyouPage> createState() => _ThankyouPageState();
}

class _ThankyouPageState extends State<ThankyouPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding:  EdgeInsets.symmetric(horizontal: 2.w),
      child: Column (
        children: [
          SizedBox(
            height: 6.h,
          ),
          Column(
            children: [
              // Container(
              //   height: 21.h,
              //   child: Lottie.asset(''),
              // ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                '😊 Thank you ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  letterSpacing: 2,
                ),
              ),

              SizedBox(
                height: 2.5.h,
              ),
              Text(
                'You have Subscribed our ${widget.plan} Package.',
                style: mainstyle,textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 2.h,
              ),
            Text(
                'Thanks for Paying \$ ${widget.price}.',
                style: mainstyle,
                textAlign: TextAlign.center,
              ),

              SizedBox(
                height: 2.h,
              ),
              Text(
                'You are now our Premium Member for ${widget.subs}',
                style: mainstyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.h,
              ),
              Text('Press The Button And Restart The Game',
                  style: mainstyle, textAlign: TextAlign.center),
              SizedBox(
                height: 6.h,
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
                  padding: EdgeInsets.all(2.h),
                  child: Text(
                    'Restart the Game',
                    style: TextStyle(
                      fontSize: 13.sp,
                      color: Colors.white,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    ),);
  }
}
