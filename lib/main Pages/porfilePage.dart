import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:http/http.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:jicksaw/drawer.dart';

import 'package:sizer/sizer.dart';




class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

List img = [
  "assets/ney.jpg",
  "assets/ney2.jpg",
  "assets/ney3.webp",
  "assets/ney1.jpg",
  "assets/ney.jpg"
];
TextEditingController _about = TextEditingController();
TextEditingController _CurrTeam = TextEditingController();
TextEditingController _prevclub = TextEditingController();
TextEditingController _exp = TextEditingController();
TextEditingController _position = TextEditingController();
bool isloading = true;
bool isPlay = false;

class _MyProfileState extends State<MyProfile> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
        drawer: drawer1(),
        key: _scaffoldKey,
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 4.w, right: 4.w),
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            print('object');
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          icon: Icon(
                            Icons.menu_rounded,
                            color: primary,
                          )),
                      SizedBox(
                        width: 30.w,
                      ),
                      Text(
                        'My Profile',
                        style: primarytxt1,
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: 2.w,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
                        height: 12.h,
                        width: 25.w,
                        padding: EdgeInsets.all(1.w),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(90),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl:
                                '',
                            progressIndicatorBuilder:
                                (context, url, progress) =>
                                CircularProgressIndicator(),
                            errorWidget: (context, url, error) =>
                                Image.asset(
                                  'assets/user.png',
                                  color: Colors.white,
                                ),
                          ),
                        ),
                      ),
                      // CircleAvatar(
                      //   backgroundColor: Colors.white,
                      //   radius: 6.1.h,
                      //   child: CircleAvatar(
                      //     backgroundColor: Color(0xff131313),
                      //     radius: 5.7.h,
                      //     child: CircleAvatar(
                      //       backgroundColor: Colors.transparent,
                      //       backgroundImage: NetworkImage(
                      //         profiledata!.viewProfileDetails!.profilePic
                      //            ?? '',
                      //       ),
                      //       radius: 7.h,
                      //     ),
                      //   ),
                      // ),
                      Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 50.w,
                            child: Text(

                                  'John Wick',
                              style: header
                            ),
                          ),
                          SizedBox(
                            height: 1.w,
                          ),
                          Container(
                            width: 62.w,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      '',
                                      style: TextStyle(
                                        fontSize: 6.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "game",
                                        color: Color(0xffffffff),letterSpacing: 2,
                                      ),
                                    ),
                                    Text(
                                      'Connections',
                                      style: TextStyle(
                                        fontSize: 3.5.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "game",
                                        color: Color(0xffb4b4b4),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    Text(

                                          '',
                                      style: TextStyle(
                                        fontSize: 6.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "game",
                                        color: Color(0xffffffff),letterSpacing: 2,
                                      ),
                                    ),
                                    Text(
                                      'Age',
                                      style: TextStyle(
                                        fontSize: 3.5.w,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: "game",
                                        color: Color(0xffb4b4b4),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 3.w,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 4.5.w,
                      fontWeight: FontWeight.w500,
                      fontFamily: "game",
                       color: Color(0xffffffff),letterSpacing: 2,
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                      child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                  border:
                                  Border.all(color: Colors.white),
                                  borderRadius:
                                  BorderRadius.circular(10)),
                              child: Text(
                                'Edit Profile',
                                style: secondarytxtwhite,
                              )))),
                  SizedBox(height: 1.h),

                  Divider(
                    color: Color(0xff7a7a7a),
                  ),
                  SizedBox(height: 0.2.h),
                Column(
                    children: [
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.sports_baseball_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Current Club : ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                 color: Color(0xffffffff),letterSpacing: 2,
                                fontFamily: "game",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp),
                          ),
                          SizedBox(
                            width: 6.w,
                          ),
                          SizedBox(width: 40.w,
                            child: Text(

                                  '',
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                   color: Color(0xffffffff),letterSpacing: 2,
                                  fontFamily: "game",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Row(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.sports_baseball_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Previous Club : ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                 color: Color(0xffffffff),letterSpacing: 2,
                                fontFamily: "game",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp),
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          SizedBox(width: 40.w,
                            child: Text(

                                  '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                   color: Color(0xffffffff),letterSpacing: 2,
                                  fontFamily: "game",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13.sp),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  )
                  ,

                  Row(
                    children: [
                      Icon(
                        Icons.person_outline,
                        color: Colors.white,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                        "Experince : ",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                             color: Color(0xffffffff),letterSpacing: 2,
                            fontFamily: "game",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                      SizedBox(
                        width: 12.3.w,
                      ),
                      Text(

                            '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                             color: Color(0xffffffff),letterSpacing: 2,
                            fontFamily: "game",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.personal_injury_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 2.w),
                      Text(
                       "Ocupation :",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                             color: Color(0xffffffff),letterSpacing: 2,
                            fontFamily: "game",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                      SizedBox(
                        width: 17.w,
                      ),
                      Text(

                        '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                             color: Color(0xffffffff),letterSpacing: 2,
                            fontFamily: "game",
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 3.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: Colors.white,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "My Bio : ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                 color: Color(0xffffffff),letterSpacing: 2,
                                fontFamily: "game",
                                fontWeight: FontWeight.w500,
                                fontSize: 13.sp),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 0.5.h,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 2.w),
                        child:
                        Padding(
                          padding: EdgeInsets.only(
                              top: 2.h, bottom: 2.h),
                          child: Text(

                            '',
                            style: secondarytxtwhite,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),

                ],
              ),
            ),
          ),
        ),
      );
  }



}

//======================================== crousals for follower ==============================================

// Column(
//   children: [
//     CircleAvatar(
//       backgroundImage: NetworkImage(
//         'https://icdn.football-espana.net/wp-content/uploads/2022/06/Neymar-Junior2.jpeg',
//       ),
//       radius: 7.h,
//     ),
//     SizedBox(height: 2.h),
//     Text(
//       'Neymar JR.',
//       style: TextStyle(
//         fontSize: 8.w,
//         fontWeight: FontWeight.w600,
//         fontFamily: "game",
//         color: Color(0xffeaeaea),
//       ),
//     ),
//     SizedBox(height: 1.h),
//     Text(
//       'neymar.jr@gmail.com',
//       style: TextStyle(
//         fontSize: 4.w,
//         fontWeight: FontWeight.w600,
//         fontFamily: "game",
//         color: Color(0xff0DF5E3),
//       ),
//     ),
//     SizedBox(height: 2.h),
//     Container(
//         alignment: Alignment.center,
//         height: 10.h,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.15),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '28',
//                   style: TextStyle(
//                     fontSize: 7.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffffffff),letterSpacing: 2,
//                   ),
//                 ),
//                 Text(
//                   'Posts',
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffb4b4b4),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '69',
//                   style: TextStyle(
//                     fontSize: 7.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffffffff),letterSpacing: 2,
//                   ),
//                 ),
//                 Text(
//                   'Following',
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffb4b4b4),
//                   ),
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   '1.5B',
//                   style: TextStyle(
//                     fontSize: 7.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffffffff),letterSpacing: 2,
//                   ),
//                 ),
//                 Text(
//                   'Followers',
//                   style: TextStyle(
//                     fontSize: 3.5.w,
//                     fontWeight: FontWeight.w500,
//                     fontFamily: "game",
//                     color: Color(0xffb4b4b4),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         )),
//   ],
// ),
// SizedBox(height: 2.h),
// Row(
//   mainAxisAlignment: MainAxisAlignment.spaceAround,
//   children: [
//     InkWell(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         height: 9.h,
//         width: 35.w,
//         decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.10),
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: Colors.white)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               size: 9.w,
//               Icons.person_outline_rounded,
//               color: Colors.white,
//             ),
//             Text(
//               'View Profile',
//               style: TextStyle(
//                 fontSize: 4.w,
//                 fontWeight: FontWeight.w500,
//                 fontFamily: "game",
//                 color: Color(0xffeaeaea),
//               ),
//             )
//           ],
//         ),
//       ),
//     ),
//     InkWell(
//       onTap: () {},
//       child: Container(
//         alignment: Alignment.center,
//         height: 9.h,
//         width: 35.w,
//         decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.10),
//             borderRadius: BorderRadius.circular(15),
//             border: Border.all(color: Colors.white)),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(
//               size: 7.w,
//               Icons.mode_edit_outline_outlined,
//               color: Colors.white,
//             ),
//             SizedBox(
//               height: 0.5.h,
//             ),
//             Text(
//               'Edit',
//               style: TextStyle(
//                 fontSize: 4.w,
//                 fontWeight: FontWeight.w500,
//                 fontFamily: "game",
//                 color: Color(0xffeaeaea),
//               ),
//             )
//           ],
//         ),
//       ),
//     ),
//     // InkWell(
//     //   onTap: () {},
//     //   child: Container(
//     //     alignment: Alignment.center,
//     //     height: 6.h,
//     //     width: 34.w,
//     //     decoration: BoxDecoration(
//     //       color: Colors.grey.withOpacity(0.05),
//     //       borderRadius: BorderRadius.circular(30),
//     //       border: Border.all(
//     //         color: Color(0xff0DF5E3),
//     //       ),
//     //     ),
//     //     child: Text(
//     //       'Connect',
//     //       style: TextStyle(
//     //         fontSize: 4.w,
//     //         fontWeight: FontWeight.w500,
//     //         fontFamily: "game",
//     //         color: Color(0xffeaeaea),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // InkWell(
//     //   onTap: () {
//     //     Navigator.of(context).push(
//     //       MaterialPageRoute(
//     //         builder: (context) => ChatPage(),
//     //       ),
//     //     );
//     //   },
//     //   child: Container(
//     //     alignment: Alignment.center,
//     //     height: 6.h,
//     //     width: 30.w,
//     //     decoration: BoxDecoration(
//     //       color: Colors.grey.withOpacity(0.05),
//     //       borderRadius: BorderRadius.circular(30),
//     //       border: Border.all(
//     //         color: Color(0xff0DF5E3),
//     //       ),
//     //     ),
//     //     child: Text(
//     //       'Message',
//     //       style: TextStyle(
//     //         fontSize: 4.w,
//     //         fontWeight: FontWeight.w500,
//     //         fontFamily: "game",
//     //         color: Color(0xffeaeaea),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//     // InkWell(
//     //   onTap: () {
//     //     Navigator.of(context).push(
//     //       MaterialPageRoute(
//     //         builder: (context) => Helathreport(),
//     //       ),
//     //     );
//     //   },
//     //   child: Container(
//     //     alignment: Alignment.center,
//     //     height: 6.h,
//     //     width: 27.w,
//     //     decoration: BoxDecoration(
//     //       color: Colors.grey.withOpacity(0.05),
//     //       borderRadius: BorderRadius.circular(30),
//     //       border: Border.all(
//     //         color: Color(0xff0DF5E3),
//     //       ),
//     //     ),
//     //     child: Text(
//     //       'Health',
//     //       style: TextStyle(
//     //         fontSize: 4.w,
//     //         fontWeight: FontWeight.w500,
//     //         fontFamily: "game",
//     //         color: Color(0xffeaeaea),
//     //       ),
//     //     ),
//     //   ),
//     // ),
//   ],
// ),
