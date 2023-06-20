import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class CharPurchased extends StatefulWidget {
  String? pic;

  CharPurchased({super.key, this.pic});

  @override
  State<CharPurchased> createState() => _CharPurchasedState();
}

class _CharPurchasedState extends State<CharPurchased> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  height: 50.h,
                  width: 150.w,
                  child: Lottie.asset('assets/cong.json'),
                ),
              ),
              Positioned(
                  top: 08.h,
                  left: 13.w,
                  child: Image.network(
                    widget.pic.toString(),
                    height: 35.h,
                    width: 75.w,
                    fit: BoxFit.contain,
                  )),
            ],
          ),
          SizedBox(height: 40.h,
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Congratulations !',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Thanks For Purchasing This Character',textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      fontFamily: 'Poppins'),
                ),
                Text(
                  'Now You Have Access to this Premium Character',textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
