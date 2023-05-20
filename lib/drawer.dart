import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/main%20Pages/challenges%20page.dart';
import 'package:jicksaw/main%20Pages/porfilePage.dart';
import 'package:jicksaw/main%20Pages/progress.dart';
import 'package:jicksaw/main%20Pages/rank_page.dart';
import 'package:jicksaw/main%20Pages/reward_page.dart';
import 'package:jicksaw/main%20Pages/settings.dart';
import 'package:jicksaw/main%20Pages/shoppage.dart';
import 'package:jicksaw/main%20Pages/subscription_page.dart';

import 'package:sizer/sizer.dart';

class drawer1 extends StatefulWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  State<drawer1> createState() => _drawer1State();
}



class _drawer1State extends State<drawer1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // playerapi();
    print('open');
  }

  Widget build(BuildContext context) {
    double widthDrawer = MediaQuery.of(context).size.width * 0.75;
    return SafeArea(
        child: Drawer(
      child: Container(
        color: bgcolor,
        // color: Colors.black,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: widthDrawer,
           color: bgcolor,
          // color: Colors.black,
          child: ListView(
            //padding: EdgeInsets.all(2.w),
            children: [
              SizedBox(
                height: 2.h,
              ),
              InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => MyProfile(),
                  //   ),
                  // );
                },
                child: Container(
                  height: 12.h,
                  padding: EdgeInsets.all(1.w),
                  width: widthDrawer,
                  // color: Colors.black.withOpacity(0.3),
                  decoration: BoxDecoration(
                      // image: DecorationImage(
                      //     fit: BoxFit.fill,
                      //     image: AssetImage("assets/splash2.jpg"))
                      // image: NetworkImage(
                      //     'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
                      ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 8.5.h,
                        width: 17.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: (profileviewmodal?.profileViewPlayer?.profilePic).toString(),
                            progressIndicatorBuilder:
                                (context, url, progress) =>
                                    CircularProgressIndicator(),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/user.png',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //     radius: 9.w,
                      //     backgroundImage: NetworkImage(
                      //         "https://icdn.football-espana.net/wp-content/uploads/2022/06/Neymar-Junior2.jpeg")),
                      SizedBox(
                        width: 7.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 0.5.h,
                          ),
                          Text(
                            usermodal?.userData?.name ?? "",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12.sp,
                                fontFamily: 'Meta1',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 0.5.h,
                          ),
                          SizedBox(
                            width: 42.w,
                            child: Text(usermodal?.userData?.eMail ?? "",
                                maxLines: 2,
                                style: TextStyle(
                                    color: primary,
                                    fontFamily: 'Meta1',
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey,
              ),
              SizedBox(
                height: 1.5.h,
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Get.to(()=>mainpage2());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.house,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Home",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>ShopmainPage());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.shopify_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Shop",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>MyProfile());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person_outline_rounded,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Profile",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>Challangepage());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.chalet_outlined,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Challenges",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>progress());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle_notifications_sharp,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Progress",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>reward());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.currency_bitcoin,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Rewards",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>subscription());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.subscriptions_outlined,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Subscription",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>setting());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Settings",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 2.h,
                  ),
                  InkWell(
                    onTap: () {
                      Get.to(()=>rank());
                      // Navigator.of(context).push(
                      //   MaterialPageRoute(
                      //     builder: (context) => mainpage2(),
                      //   ),
                      // );
                    },
                    child: Container(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 6.w,
                          ),
                          Container(
                            width: 66.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.stacked_bar_chart,
                                      color: Colors.black,
                                    ),
                                    SizedBox(
                                      width: 2.w,
                                    ),
                                    Text("Ranking",
                                        style: TextStyle(
                                          fontSize:12.sp,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Meta1',
                                          color: Colors.black,
                                        )),
                                  ],
                                ),
                                Icon(
                                  Icons.chevron_right_rounded,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),);
  }

  TextStyle textStyle = TextStyle(
      color: Colors.black,
      fontSize: 12.sp,
      fontFamily: 'game',
      fontWeight: FontWeight.w600);
}

// old drawer

// SizedBox(
//   height: 1.5.h,
// ),
// (userData!.userData!.role == "2")
//     ? Column(
//         children: [
//           Divider(
//             color: Colors.white54,
//           ),
//           Container(
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 2.w,
//                 ),
//                 Text(
//                   "Profile",
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                      fontFamily: 'Meta1',
//                     color: Color(0xffb2b2b2),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.person_outline_rounded,
//                         color: Colors.white,
//                       ),
//                       SizedBox(
//                         width: 2.w,
//                       ),
//                       Text("My Profile",
//                           style: TextStyle(
//                             fontSize:12.sp,
//                             fontWeight: FontWeight.w500,
//                              fontFamily: 'Meta1',
//                             color: Colors.white,
//                           )),
//                       SizedBox(
//                         width: 33.w,
//                       ),
//                       Icon(
//                         Icons.chevron_right_rounded,
//                         color: Colors.white,
//                       )
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyScoutListingPage(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.person_outline_rounded,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Scout",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyCoachingFeedbackPage(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.person_outline_rounded,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Coach",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyTrainingFeedbackPage(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.person_outline_rounded,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Training",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyNutritionFeedbackPage(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.person_outline_rounded,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Nutritionist",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyMedicalPage(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.person_outline_rounded,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Medical",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 1.5.h,
//           ),
//         ],
//       )
//     : Container(),
// Divider(
//   color: Colors.white54,
// ),
// Row(
//   children: [
//     SizedBox(
//       width: 2.w,
//     ),
//     Text(
//       "Others",
//       style: TextStyle(
//         fontSize: 3.5.w,
//         fontWeight: FontWeight.w500,
//          fontFamily: 'Meta1',
//         color: Color(0xffb2b2b2),
//       ),
//     ),
//   ],
// ),
// SizedBox(
//   height: 2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//         MaterialPageRoute(builder: (context) => listingpage()));
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Row(
//           children: [
//             Icon(
//               Icons.pages_outlined,
//               color: Colors.white,
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             Text("All Users",
//                 style: TextStyle(
//                   fontSize:12.sp,
//                   fontWeight: FontWeight.w500,
//                    fontFamily: 'Meta1',
//                   color: Colors.white,
//                 )),
//             SizedBox(
//               width: 33.w,
//             ),
//             Icon(
//               Icons.chevron_right_rounded,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => DiscoverPage(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Row(
//           children: [
//             Icon(
//               Icons.person_add_alt_1_outlined,
//               color: Colors.white,
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             Text("My Request",
//                 style: TextStyle(
//                   fontSize:12.sp,
//                   fontWeight: FontWeight.w500,
//                    fontFamily: 'Meta1',
//                   color: Colors.white,
//                 )),
//             SizedBox(
//               width: 30.w,
//             ),
//             Icon(
//               Icons.chevron_right_rounded,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => MyConnections(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Row(
//           children: [
//             Icon(
//               Icons.person_add_alt_1_outlined,
//               color: Colors.white,
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             Text(
//               "My Connections",
//               style: TextStyle(
//                 fontSize:12.sp,
//                 fontWeight: FontWeight.w500,
//                  fontFamily: 'Meta1',
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(
//               width: 21.w,
//             ),
//             Icon(
//               Icons.chevron_right_rounded,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => ChatPage(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Row(
//           children: [
//             Icon(
//               Icons.chat_rounded,
//               color: Colors.white,
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             Text("Chat",
//                 style: TextStyle(
//                   fontSize:12.sp,
//                   fontWeight: FontWeight.w500,
//                    fontFamily: 'Meta1',
//                   color: Colors.white,
//                 )),
//             SizedBox(
//               width: 43.w,
//             ),
//             Icon(
//               Icons.chevron_right_rounded,
//               color: Colors.white,
//             )
//           ],
//         ),
//       ],
//     ),
//   ),
// ),

// (userData!.userData!.role == "5") ||
//         (userData!.userData!.role == "2")
//     ? Column(
//         children: [
//           SizedBox(
//             height: 1.5.h,
//           ),
//           Divider(
//             color: Colors.white54,
//           ),
//           Container(
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 2.w,
//                 ),
//                 Text(
//                   "Scouts",
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                      fontFamily: 'Meta1',
//                     color: Color(0xffb2b2b2),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//         ],
//       )
//     : Container(),

// (userData!.userData!.role == "5") ||
//         (userData!.userData!.role == "2")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => ScoutListing(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("All Sessions",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// (userData!.userData!.role == "5") ||
//         (userData!.userData!.role == "2")
//     ? SizedBox(
//         height: 2.2.h,
//       )
//     : Container(),
// (userData!.userData!.role == "2")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => CreateScouts(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("Create Scout Session",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// (userData!.userData!.role == "2")
//     ? SizedBox(
//         height: 2.2.h,
//       )
//     : Container(),
// (userData!.userData!.role == "5")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => ScoutFeedbackListings(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("Scout Feedback",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// // SizedBox(S
// //   height: 2.2.h,
// // ),
// (userData!.userData!.role == "2")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => ScoutProfile(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("Scout Profile",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// SizedBox(
//   height: 2.2.h,
// ),
// (userData!.userData!.role == "5")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => MyScoutProfile(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("My Profile",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// (userData!.userData!.role == "5")
//     ? SizedBox(
//         height: 1.5.h,
//       )
//     : Container(),
// Divider(
//   color: Colors.white54,
// ),
// Container(
//   child: Row(
//     children: [
//       SizedBox(
//         width: 2.w,
//       ),
//       Text(
//         "Coaching",
//         style: TextStyle(
//           fontSize: 3.5.w,
//           fontWeight: FontWeight.w500,
//            fontFamily: 'Meta1',
//           color: Color(0xffb2b2b2),
//         ),
//       ),
//     ],
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => CoachListing(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("All Sessions",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => CreateCoaching(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("Create Coching Session",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => CoachProfile(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("Coach Profile",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),

// (userData!.userData!.role == "3")
//     ? Column(
//         children: [
//           SizedBox(
//             height: 2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => FeedbackListings(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Feedback Listing",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyCoachProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// SizedBox(
//   height: 1.5.h,
// ),
// (userData!.userData!.role == "9") ||
//         (userData!.userData!.role == "2")
//     ? Column(
//         children: [
//           Divider(
//             color: Colors.white54,
//           ),
//           Container(
//             child: Row(
//               children: [
//                 SizedBox(
//                   width: 2.w,
//                 ),
//                 Text(
//                   "Training",
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                      fontFamily: 'Meta1',
//                     color: Color(0xffb2b2b2),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//         ],
//       )
//     : Container(),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => TrainingsListing(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("All Sessions",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => CreateTraining(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("Create Training Session",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// (userData!.userData!.role == "9")
//     ? InkWell(
//         onTap: () {
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => TrainerFeedbackListings(),
//             ),
//           );
//         },
//         child: Container(
//           child: Row(
//             children: [
//               SizedBox(
//                 width: 6.w,
//               ),
//               Container(
//                 width: 66.w,
//                 child: Row(
//                   mainAxisAlignment:
//                       MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.contact_page_outlined,
//                           color: Colors.white,
//                         ),
//                         SizedBox(
//                           width: 2.w,
//                         ),
//                         Text("Training Feedback",
//                             style: TextStyle(
//                               fontSize:12.sp,
//                               fontWeight: FontWeight.w500,
//                                fontFamily: 'Meta1',
//                               color: Colors.white,
//                             )),
//                       ],
//                     ),
//                     Icon(
//                       Icons.chevron_right_rounded,
//                       color: Colors.white,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       )
//     : Container(),
// (userData!.userData!.role == "9")
//     ? SizedBox(
//         height: 2.2.h,
//       )
//     : Container(),
// InkWell(
//   onTap: () {
//     Navigator.of(context).push(
//       MaterialPageRoute(
//         builder: (context) => TrainerProfile(),
//       ),
//     );
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Container(
//           width: 66.w,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Row(
//                 children: [
//                   Icon(
//                     Icons.contact_page_outlined,
//                     color: Colors.white,
//                   ),
//                   SizedBox(
//                     width: 2.w,
//                   ),
//                   Text("Trainer Profile",
//                       style: TextStyle(
//                         fontSize:12.sp,
//                         fontWeight: FontWeight.w500,
//                          fontFamily: 'Meta1',
//                         color: Colors.white,
//                       )),
//                 ],
//               ),
//               Icon(
//                 Icons.chevron_right_rounded,
//                 color: Colors.white,
//               )
//             ],
//           ),
//         ),
//       ],
//     ),
//   ),
// ),
// (userData!.userData!.role == "9")
//     ? Column(
//         children: [
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyTrainerProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// SizedBox(
//   height: 1.5.h,
// ),
// Divider(
//   color: Colors.white54,
// ),
// Container(
//   child: Row(
//     children: [
//       SizedBox(
//         width: 2.w,
//       ),
//       Text(
//         "Nutritionist",
//         style: TextStyle(
//           fontSize: 3.5.w,
//           fontWeight: FontWeight.w500,
//            fontFamily: 'Meta1',
//           color: Color(0xffb2b2b2),
//         ),
//       ),
//     ],
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// (userData!.userData!.role == "2")
//     ? Column(
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => NutriListing(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("All Sessions",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => CreateNutritionist(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Create Nutri Session",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => NutritionistProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Nutritionist Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// (userData!.userData!.role == "7")
//     ? Column(
//         children: [
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => NutriFeedbackListings(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Nutritionist Feedback",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyNutritionistProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// SizedBox(
//   height: 1.5.h,
// ),
// Divider(
//   color: Colors.white54,
// ),
// Container(
//   child: Row(
//     children: [
//       SizedBox(
//         width: 2.w,
//       ),
//       Text(
//         "Medical",
//         style: TextStyle(
//           fontSize: 3.5.w,
//           fontWeight: FontWeight.w500,
//            fontFamily: 'Meta1',
//           color: Color(0xffb2b2b2),
//         ),
//       ),
//     ],
//   ),
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// (userData!.userData!.role == "2")
//     ? Column(
//         children: [
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MedicalListings(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("All Sessions",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => CreateMedical(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Create Medical Session",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MedicalProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Medical Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// (userData!.userData!.role == "6")
//     ? Column(
//         children: [
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MedicalFeedbackListings(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("Medical Feedback",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(
//             height: 2.2.h,
//           ),
//           InkWell(
//             onTap: () {
//               Navigator.of(context).push(
//                 MaterialPageRoute(
//                   builder: (context) => MyMedicalProfile(),
//                 ),
//               );
//             },
//             child: Container(
//               child: Row(
//                 children: [
//                   SizedBox(
//                     width: 6.w,
//                   ),
//                   Container(
//                     width: 66.w,
//                     child: Row(
//                       mainAxisAlignment:
//                           MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Icon(
//                               Icons.contact_page_outlined,
//                               color: Colors.white,
//                             ),
//                             SizedBox(
//                               width: 2.w,
//                             ),
//                             Text("My Profile",
//                                 style: TextStyle(
//                                   fontSize:12.sp,
//                                   fontWeight: FontWeight.w500,
//                                    fontFamily: 'Meta1',
//                                   color: Colors.white,
//                                 )),
//                           ],
//                         ),
//                         Icon(
//                           Icons.chevron_right_rounded,
//                           color: Colors.white,
//                         )
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       )
//     : Container(),
// SizedBox(
//   height: 1.5.h,
// ),
// Divider(
//   color: Colors.white54,
// ),
// Row(
//   children: [
//     SizedBox(
//       width: 2.w,
//     ),
//     Text(
//       "Account",
//       style: TextStyle(
//         fontSize: 3.5.w,
//         fontWeight: FontWeight.w500,
//          fontFamily: 'Meta1',
//         color: Color(0xffb2b2b2),
//       ),
//     ),
//   ],
// ),
// SizedBox(
//   height: 2.2.h,
// ),
// InkWell(
//   onTap: () async {
//     Navigator.of(context).pushReplacement(
//       MaterialPageRoute(
//         builder: (context) => loginpage(),
//       ),
//     );
//     await SaveDataLocal.clearUserData();
//   },
//   child: Container(
//     child: Row(
//       children: [
//         SizedBox(
//           width: 6.w,
//         ),
//         Row(
//           children: [
//             Icon(
//               Icons.logout_rounded,
//               color: Colors.white,
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             Text(
//               "Logout",
//               style: TextStyle(
//                 fontSize:12.sp,
//                 fontWeight: FontWeight.w500,
//                  fontFamily: 'Meta1',
//                 color: Colors.white,
//               ),
//             ),
//           ],
//         ),
//       ],
//     ),
//   ),
// ),
// SizedBox(
//   height: 1.h,
// ),
