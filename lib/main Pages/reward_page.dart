import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

class reward extends StatefulWidget {
  const reward({Key? key}) : super(key: key);

  @override
  State<reward> createState() => _rewardState();
}

class _rewardState extends State<reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h),
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(height: 3.h,),
              Row(
                children: [

                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mainpage2()),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: primary,
                      )),

                  SizedBox(
                    width: 25.w,
                  ),
                  Text(
                    'Rewards',
                    style: primarytxt1,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Row(
                      children: [
                        SizedBox(height: 12.h),
                        Text(
                          " Hello, John",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15.sp,
                             fontFamily: 'Poppins',
                          ),
                        ),
                        SizedBox(width: 2.w),
                        Icon(
                          Icons.waving_hand,
                          color: Color(0xfffdba34),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // make container circular
                    ),
                    child: ClipOval(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                        width: 5.h, // set image width to match container width
                        height:
                            5.h, // set image height to match container height
                        fit: BoxFit.cover, // scale image to fill container
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  "Congratulations!",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp,
                         fontFamily: 'Poppins',
                      ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xfffff6e5)
                        // color: Colors.red

                        ),
                    child: Icon(
                      Icons.stacked_bar_chart,
                      color: Color(0xfffdba34),
                      size: 4.h,
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text(
                          "Points",
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold,
                             fontFamily: 'Poppins',
                          ),
                        ),
                        Text(
                          "2000",
                          style: TextStyle(
                              color: Color(0xffffb635),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                             fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 10.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffefefef)
                        // color: Colors.red

                        ),
                    child: Text(
                      "=",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25.sp,
                         fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Color(0xffe0efe6)
                        // color: Colors.red

                        ),
                    child: Icon(
                      Icons.add_card_sharp,
                      color: Color(0xff258e52),
                      size: 4.h,
                    ),
                  ),
                  Container(
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(6),
                      //     color: Color(0xffe0efe6)
                      //   // color: Colors.red
                      //
                      // ),
                      child: Column(
                    children: [
                      Text(
                        'USD',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.sp,
                           fontFamily: 'Poppins',
                        ),
                      ),
                      Text(
                        '234',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          fontFamily: 'Poppins',
                            color: Color(0xff258e52)),
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Stack(children: <Widget>[
                Positioned(top: 0, bottom: 0, child: Container()),
                Container(
                  alignment: Alignment.center,
                  child: Image.network(
                    "https://media.istockphoto.com/id/486600397/photo/gold-winners-trophy-isolated.jpg?s=612x612&w=0&k=20&c=ynwYxksYAY1l7kcBSiUeWw-6l-HutBkt3yuEcOSEpSs=",
                    height: 40.h,
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 50.h,
                    child: Center(
                      child: Lottie.asset('assets/reward_cup/125119-confeti (2).json'),
                    ),
                  ),
                ),
              ]),
              Container(
                alignment: Alignment.center,
                height: 8.h,
                width: 50.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: primary,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Redeem Now",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                         fontFamily: 'Poppins',
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 18.sp,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
