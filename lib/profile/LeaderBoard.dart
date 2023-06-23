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
                                          style: TextStyle(  fontFamily: 'Poppins',
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
                            height: 19.h,
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
                                      style: TextStyle(  fontFamily: 'Poppins',
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
                                          style: TextStyle(  fontFamily: 'Poppins',
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
                // SizedBox(
                //   height: 2.h,
                // ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: Container(
                //     color: Colors.black12,
                //     child: Column(
                //       children: [
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "5",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "W",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("wrteam   dev",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //         Row(
                //           children: [
                //             SizedBox(
                //               width: 7,
                //             ),
                //             Text(
                //               "4",
                //               style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Container(
                //               margin: EdgeInsets.only(top: 8, bottom: 8),
                //               height: 5.h,
                //               width: 10.w,
                //               decoration: BoxDecoration(
                //                 color: Colors.blue,
                //                 borderRadius: BorderRadius.circular(100),
                //               ),
                //               child: Center(
                //                   child: Text(
                //                 "B",
                //                 style: TextStyle(  fontFamily: 'Poppins',
                //                     fontSize: 25,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white),
                //               )),
                //             ),
                //             SizedBox(
                //               width: 23,
                //             ),
                //             Text("Bhavna Mepani",
                //                 style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                //             SizedBox(
                //               width: 150,
                //             ),
                //             Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                //           ],
                //         ),
                //         Padding(
                //           padding: const EdgeInsets.only(left: 10, right: 10),
                //           child: Divider(
                //             color: Colors.black12,
                //             thickness: 1,
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          Positioned(
            top: 720,
            left: 11,
            child: Container(
              width: 390,
              color: Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "4",
                    style: TextStyle(  fontFamily: 'Poppins',fontSize: 20),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 8),
                    height: 5.h,
                    width: 10.w,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                        child: Text(
                      "B",
                      style: TextStyle(  fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                  Text("Bhavna Mepani", style: TextStyle(  fontFamily: 'Poppins',fontSize: 15)),
                  SizedBox(
                    width: 150,
                  ),
                  Text("91", style: TextStyle(  fontFamily: 'Poppins',fontSize: 20)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
