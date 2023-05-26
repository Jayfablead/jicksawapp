import 'package:flutter/material.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';

class progress extends StatefulWidget {
  const progress({Key? key}) : super(key: key);

  @override
  State<progress> createState() => _progressState();
}

class _progressState extends State<progress> {
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _loading = false;
  }
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2.h,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              elevation: 0,
              color: Colors.deepOrangeAccent,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40.h,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.h),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 1.h,),
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
                                color: Colors.black,
                              )),




                        ],
                      ),
                      // SizedBox(
                      //   height: 0.h,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 13
                                .h, // set image width to match container width
                            height: 13.h, // set container height
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              // make container circular
                            ),
                            child: ClipOval(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                width: 13
                                    .h, // set image width to match container width
                                height: 13
                                    .h, // set image height to match container height
                                fit: BoxFit
                                    .cover, // scale image to fill container
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 3.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Text(
                                  "John Doe",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Abc",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Container(
                        width: 50.w,
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 1.h,

                          child: LinearProgressIndicator(
                            value: 0.5, // the progress value from 0.0 to 1.0
                            backgroundColor:
                                Colors.green, // the color of the background
                            valueColor: AlwaysStoppedAnimation<Color>(Colors
                                .blue), // the color of the progress indicator
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "175k",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text("followers",
                                  style: TextStyle(fontSize: 12.sp,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 4.w),
                            Column(
                              children: [
                                Text(
                                  "16k",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text("followers",
                                  style: TextStyle(fontSize: 12.sp,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 4.w),
                            Column(
                              children: [
                                Text(
                                  "600",
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.bold,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  "followers",
                                  style: TextStyle(fontSize: 12.sp,
                                     fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Previous Games",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.sp,
                             fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      Container(
                        width: 20.w,
                        height: 4.h,
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(40),
                        //   color: Colors.blue
                        // ),
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "View all",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 11.sp,
                               fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 14.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(50)),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.alarm,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.grey,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 14.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.circular(50)),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.alarm,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.grey,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                          width: 14.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(50)),
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.alarm,
                            color: Colors.white,
                          )),
                      SizedBox(
                        width: 4.w,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.sp,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                              Text(
                                "Sliding Puzzle",
                                style: TextStyle(
                                    fontSize: 10.sp, color: Colors.grey,
                                   fontFamily: 'Poppins',
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Active Games",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.sp,
                         fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 0,
                        color: Colors.greenAccent,
                        child: SizedBox(
                          width: 40.w,
                          height: 30.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.h),
                            child: Column(
                              children: [
                                SizedBox(height: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //   width: 13.h, // set image width to match container width
                                    //   height: 13.h, // set container height
                                    //   decoration: BoxDecoration(
                                    //     shape: BoxShape.circle,
                                    //     // make container circular
                                    //   ),
                                    //   // child: ClipOval(
                                    //   //   child: Image.network(
                                    //   //     'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                    //   //     width: 13.h, // set image width to match container width
                                    //   //     height: 13.h, // set image height to match container height
                                    //   //     fit:
                                    //   //     BoxFit.cover, // scale image to fill container
                                    //   //   ),
                                    //   // ),
                                    // ),
                                    // SizedBox(
                                    //   width: 3.h,
                                    // ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            child: CircularPercentIndicator(
                                              radius: 60.0,
                                              lineWidth: 10.0,
                                              percent: 0.30,
                                              center: new Text(
                                                "30%",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                   fontFamily: 'Poppins',
                                                ),
                                              ),
                                              progressColor: Colors.red,
                                            ),
                                            // child: CircularProgressIndicator(
                                            //
                                            //   strokeWidth: 1.h,
                                            //
                                            //   value: 0.5, // the progress value from 0.0 to 1.0
                                            //   backgroundColor:
                                            //   Colors.red, // the color of the background
                                            //   valueColor: AlwaysStoppedAnimation<Color>(
                                            //       Colors.blue), // the color of the progress indicator
                                            // ),
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        Container(
                                          child: Text(
                                            "Player-1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.sp,
                                               fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Abc",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.sp,
                                               fontFamily: 'Poppins',
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
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        elevation: 0,
                        color: Colors.blueGrey,
                        child: SizedBox(
                          width: 40.w,
                          height: 30.h,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2.h),
                            child: Column(
                              children: [
                                SizedBox(height: 2.h),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Container(
                                    //   width: 13.h, // set image width to match container width
                                    //   height: 13.h, // set container height
                                    //   decoration: BoxDecoration(
                                    //     shape: BoxShape.circle,
                                    //     // make container circular
                                    //   ),
                                    //   child: ClipOval(
                                    //     child: Image.network(
                                    //       'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                                    //       width: 13.h, // set image width to match container width
                                    //       height: 13.h, // set image height to match container height
                                    //       fit:
                                    //       BoxFit.cover, // scale image to fill container
                                    //     ),
                                    //   ),
                                    // ),
                                    // SizedBox(
                                    //   width: 3.h,
                                    // ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        Container(
                                          alignment: Alignment.center,
                                          child: SizedBox(
                                            child: CircularPercentIndicator(
                                              radius: 60.0,
                                              lineWidth: 10.0,
                                              percent: 0.10,
                                              center: new Text(
                                                "10%",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: Colors.black,
                                                    fontSize: 15.sp,
                                                   fontFamily: 'Poppins',
                                                ),
                                              ),
                                              progressColor: Colors.red,
                                            ),
                                            // child: CircularProgressIndicator(
                                            //   strokeWidth: 1.h,
                                            //
                                            //
                                            //   value: 0.5, // the progress value from 0.0 to 1.0
                                            //   backgroundColor:
                                            //   Colors.red, // the color of the background
                                            //   valueColor: AlwaysStoppedAnimation<Color>(
                                            //       Colors.blue), // the color of the progress indicator
                                            // ),
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        Container(
                                          child: Text(
                                            "Player-1",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18.sp,
                                               fontFamily: 'Poppins',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          child: Text(
                                            "Abc",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 12.sp,
                                               fontFamily: 'Poppins',
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
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Card(
                  //       shape:
                  //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  //       elevation: 0,
                  //       color: Colors.greenAccent,
                  //       child: SizedBox(
                  //         width: 40.w,
                  //         height: 30.h,
                  //         child: Padding(
                  //           padding: EdgeInsets.symmetric(horizontal: 2.h),
                  //           child: Column(
                  //             children: [
                  //               SizedBox(height:2.h),
                  //               Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Container(
                  //                     width: 13.h, // set image width to match container width
                  //                     height: 13.h, // set container height
                  //                     decoration: BoxDecoration(
                  //                       shape: BoxShape.circle,
                  //                       // make container circular
                  //                     ),
                  //                     child: ClipOval(
                  //                       child: Image.network(
                  //                         'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  //                         width: 13.h, // set image width to match container width
                  //                         height: 13.h, // set image height to match container height
                  //                         fit:
                  //                         BoxFit.cover, // scale image to fill container
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     width: 3.h,
                  //                   ),
                  //                   Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       SizedBox(
                  //                         height: 2.h,
                  //                       ),
                  //                       Container(
                  //                         width: 50.w,
                  //                         alignment: Alignment.center,
                  //                         child: LinearProgressIndicator(
                  //                           value: 0.5, // the progress value from 0.0 to 1.0
                  //                           backgroundColor:
                  //                           Colors.red, // the color of the background
                  //                           valueColor: AlwaysStoppedAnimation<Color>(
                  //                               Colors.blue), // the color of the progress indicator
                  //                         ),
                  //                       ),
                  //                       SizedBox(height: 2.h),
                  //                       Container(
                  //                         child: Text(
                  //                           "Player-1",
                  //                           style: TextStyle(color: Colors.white,
                  //                               fontWeight: FontWeight.bold,
                  //                               fontSize: 18.sp),
                  //                         ),
                  //                       ),
                  //                       Container(
                  //                         child: Text(
                  //
                  //                           "Abc",
                  //                           style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //     Card(
                  //       shape:
                  //       RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                  //       elevation: 0,
                  //       color: Colors.blueGrey,
                  //       child: SizedBox(
                  //         width: 40.w,
                  //         height: 30.h,
                  //         child: Padding(
                  //           padding: EdgeInsets.symmetric(horizontal: 2.h),
                  //           child: Column(
                  //             children: [
                  //               SizedBox(height:2.h),
                  //               Column(
                  //                 crossAxisAlignment: CrossAxisAlignment.center,
                  //                 mainAxisAlignment: MainAxisAlignment.center,
                  //                 children: [
                  //                   Container(
                  //                     width: 13.h, // set image width to match container width
                  //                     height: 13.h, // set container height
                  //                     decoration: BoxDecoration(
                  //                       shape: BoxShape.circle,
                  //                       // make container circular
                  //                     ),
                  //                     child: ClipOval(
                  //                       child: Image.network(
                  //                         'https://images.unsplash.com/photo-1504593811423-6dd665756598?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
                  //                         width: 13.h, // set image width to match container width
                  //                         height: 13.h, // set image height to match container height
                  //                         fit:
                  //                         BoxFit.cover, // scale image to fill container
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   SizedBox(
                  //                     width: 3.h,
                  //                   ),
                  //                   Column(
                  //                     crossAxisAlignment: CrossAxisAlignment.start,
                  //                     mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       SizedBox(
                  //                         height: 2.h,
                  //                       ),
                  //                       Container(
                  //                         width: 50.w,
                  //                         alignment: Alignment.center,
                  //                         child: LinearProgressIndicator(
                  //                           value: 0.5, // the progress value from 0.0 to 1.0
                  //                           backgroundColor:
                  //                           Colors.red, // the color of the background
                  //                           valueColor: AlwaysStoppedAnimation<Color>(
                  //                               Colors.blue), // the color of the progress indicator
                  //                         ),
                  //                       ),
                  //                       SizedBox(height: 2.h),
                  //                       Container(
                  //                         child: Text(
                  //                           "Player-1",
                  //                           style: TextStyle(color: Colors.white,
                  //                               fontWeight: FontWeight.bold,
                  //                               fontSize: 18.sp),
                  //                         ),
                  //                       ),
                  //                       Container(
                  //                         child: Text(
                  //
                  //                           "Abc",
                  //                           style: TextStyle(color: Colors.grey, fontSize: 12.sp),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ],
                  //               ),
                  //
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
