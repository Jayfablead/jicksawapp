import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:sizer/sizer.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

List clrs = [
  Color(0xffE1F8DC),
  Color(0xffd4e0ff),
  Color(0xffffdcbe),
  Color(0xffE1F8DC),
  Color(0xffd4e0ff),
  Color(0xffffdcbe),
  Color(0xffE1F8DC),
  Color(0xffd4e0ff),
  Color(0xffffdcbe),
];
List bgclrs = [
  Colors.green.shade900,
  Colors.deepPurple,
  Colors.orange.shade900,
  Colors.green.shade900,
  Colors.deepPurple,
  Colors.orange.shade900,
  Colors.green.shade900,
  Colors.deepPurple,
  Colors.orange.shade900,
];

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(
          title1: 'Leader Board',
          press: () {
            Get.back();
          },
          icn: Icon(Icons.arrow_back_ios_new_rounded),
          act: () {},
          icn1: Icon(null)),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle),
                                height: 12.h,
                                width: 9.h,
                              ),
                              Container(
                                  height: 8.h,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV37SnlqCxU76M66xCL86DYSu1s0kU5rdfJg&usqp=CAU",
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/12.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                top: 4.7.h,
                                left: 2.7.h,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  height: 6.h,
                                  alignment: Alignment.center,
                                  width: 6.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 5.h,
                                        width: 5.w,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "2",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 10.sp),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle),
                            height: 18.h,
                            width: 16.h,
                          ),
                          Container(
                              height: 15.h,
                              width: 15.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90)),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(90),
                                child: CachedNetworkImage(
                                  fit: BoxFit.cover,
                                  imageUrl:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV37SnlqCxU76M66xCL86DYSu1s0kU5rdfJg&usqp=CAU",
                                  progressIndicatorBuilder:
                                      (context, url, progress) =>
                                          CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      Image.asset(
                                    'assets/12.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              )),
                          Positioned(
                            top: 11.h,
                            left: 6.h,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              height: 8.h,
                              alignment: Alignment.center,
                              width: 8.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 7.h,
                                    width: 7.w,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 14.sp),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        shape: BoxShape.circle),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 5.h,
                          ),
                          Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    shape: BoxShape.circle),
                                height: 12.h,
                                width: 8.h,
                              ),
                              Container(
                                  height: 8.h,
                                  width: 8.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV37SnlqCxU76M66xCL86DYSu1s0kU5rdfJg&usqp=CAU",
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/12.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              Positioned(
                                top: 5.h,
                                left: 2.7.h,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  height: 6.h,
                                  alignment: Alignment.center,
                                  width: 6.w,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 5.h,
                                        width: 5.w,
                                        alignment: Alignment.center,
                                        child: Text(
                                          "3",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 10.sp),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.pink,
                                            shape: BoxShape.circle),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                    height: 70.h,
                    padding: EdgeInsets.symmetric(horizontal: 1.5.w),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.symmetric(vertical: 0.5.h),
                          decoration: BoxDecoration(
                              color: clrs[index],
                              border: Border.all(color: bgclrs[index]),
                              borderRadius: BorderRadius.circular(10)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 3.w, vertical: 0.8.h),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "${index + 1}",
                                        style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 15.sp),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 1.h),
                                            height: 5.h,
                                            width: 11.w,
                                            alignment: Alignment.center,
                                            decoration: BoxDecoration(
                                              color: bgclrs[index],
                                              borderRadius:
                                                  BorderRadius.circular(100),
                                            ),
                                            child: Center(
                                                child: Text(
                                              "S",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white),
                                            )),
                                          ),
                                          SizedBox(
                                            width: 3.w,
                                          ),
                                          Text("Son Goku",
                                              style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 15)),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text("91",
                                      style: TextStyle(
                                          fontFamily: 'Poppins', fontSize: 20)),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      itemCount: clrs.length,
                    )),
              ],
            ),
          ),
          Positioned(
            top: 79.h,
            child: Container(
              height: 8.h,
              width: 100.w,
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "4",
                        style:
                            TextStyle(fontFamily: 'Poppins', fontSize: 15.sp),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1.h),
                        height: 5.h,
                        width: 11.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.shade400,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Center(
                            child: Text(
                          "J",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 3.w,
                      ),
                      Text("Jay Sardhara",
                          style:
                              TextStyle(fontFamily: 'Poppins', fontSize: 15)),
                    ],
                  ),
                  Text("105",
                      style: TextStyle(fontFamily: 'Poppins', fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
