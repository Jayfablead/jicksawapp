import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/subscription/subscribe_plan.dart';

import 'package:sizer/sizer.dart';

class subscription extends StatefulWidget {
  const subscription({Key? key}) : super(key: key);

  @override
  State<subscription> createState() => _subscriptionState();
}

class _subscriptionState extends State<subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(
          title1: 'Subscribe for a Plan',
          press: () {
            Get.to(mainpage2());
          },
          icn: Icon(
            Icons.arrow_back_ios,
          ),
          act: () {},
          icn1: Icon(null)),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(1.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl:
                    "https://media.istockphoto.com/id/1302382693/photo/woman-choosing-subscription-plan.jpg?b=1&s=170667a&w=0&k=20&c=xj4iIV6iDqze5As9s0B5XS5wWsd97WzyrLx9XtF7Zgo=",
                progressIndicatorBuilder: (context, url, progress) =>
                    CircularProgressIndicator(),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/default.jpeg',
                  color: Colors.black,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Container(
              child: Column(
                children: [
                  Container(
                    child: Text(
                      "Get Premium Content",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 1.h,
                  ),
                  Container(
                    child: Text(
                      "You will get access for all our platforms. Explore and Play Games on your phone. Anytime Anywhere.",
                      // style: TextStyle(fontSize: 14.sp, color: Colors.grey),
                      style: appname,
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // ListView.builder(
                  // scrollDirection: Axis.horizontal,
                  // itemCount: 3,
                  // itemBuilder: (BuildContext context, int index) =>
                  // Container(
                  //   child: Text("kfjvdkj"),
                  //
                  // ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Container(
            child: Text(
              'Starting at \$ 17.99/month or \$ 65.99/year',
              style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w200),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => subscribe_plan()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 6.h,
              width: 80.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: primary),
              child: Text(
                "Choose your plan",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontFamily: 'Poppins',
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
        ],
      ),
    );
  }
}
