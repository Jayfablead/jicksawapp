// import 'dart:convert';
//
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:jicksaw/Modal/shopitemmodal.dart';
// import 'package:jicksaw/Shop/gameinfoshop.dart';
//
// import 'package:jicksaw/Widget/loader.dart';
// import 'package:jicksaw/purchage/Charpurpage.dart';
// import 'package:sizer/sizer.dart';
//
// import '../Provider/ProfileviewModal.dart';
// import '../Provider/authprovider.dart';
// import '../Widget/buildErrorDialog.dart';
// import '../Widget/const.dart';
// import '../Widget/const widget.dart';
// import '../Widget/drawer.dart';
//
// class Allplayerspage extends StatefulWidget {
//   const Allplayerspage({Key? key}) : super(key: key);
//
//   @override
//   State<Allplayerspage> createState() => _AllplayerspageState();
// }
//
// final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
//
// class game {
//   String? image;
//   String? name;
//   Color clr;
//   String? star;
//   String? price;
//   Color? btnclr;
//
//   game(this.image, this.name, this.clr, this.star, this.btnclr, {this.price});
// }
//
// List<game> charcters = [
//   game(
//       "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
//       "Bear",
//       Colors.green.shade900,
//       'Character',
//       Color(0xffE1F8DC),
//       price: '0.99'),
//   game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
//       Colors.deepPurple, 'Character', Color(0xffd4e0ff),
//       price: '2.99'),
//   game(
//       "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
//       "Fox",
//       Colors.orange.shade900,
//       'Character',
//       Color(0xffffdcbe),
//       price: '1.99'),
//   game(
//       "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
//       "Bear",
//       Colors.green.shade900,
//       'Character',
//       Color(0xffE1F8DC),
//       price: '0.99'),
//   game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
//       Colors.deepPurple, 'Character', Color(0xffd4e0ff),
//       price: '2.99'),
//   game(
//       "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
//       "Fox",
//       Colors.orange.shade900,
//       'Character',
//       Color(0xffffdcbe),
//       price: '1.99'),
//   game(
//       "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
//       "Bear",
//       Colors.green.shade900,
//       'Character',
//       Color(0xffE1F8DC),
//       price: '0.99'),
//   game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
//       Colors.deepPurple, 'Character', Color(0xffd4e0ff),
//       price: '2.99'),
//   game(
//       "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
//       "Fox",
//       Colors.orange.shade900,
//       'Character',
//       Color(0xffffdcbe),
//       price: '1.99'),
// ];
// bool isLoading = true;
//
// class _AllplayerspageState extends State<Allplayerspage> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     // viewap();
//     // shopitems();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: appbar1(
//           title1: 'All Players',
//           press: () {
//             Get.back();
//           },
//           icn: Icon(Icons.arrow_back_ios_new_rounded),
//           act: () {},
//           icn1: Icon(null)),
//       key: _scaffoldKey,
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 4.w),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 3.h,
//                 ),
//                 GridView.builder(
//                   padding: EdgeInsets.zero,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 2.h,
//                     crossAxisSpacing: 2.w,
//                     childAspectRatio: 0.78,
//                   ),
//                   shrinkWrap: true,
//                   // scrollDirection: Axis.horizontal,
//                   itemCount: charcters.length,
//
//                   itemBuilder: (context, index) {
//                     return InkWell(
//                       onTap: () {
//                         Get.to(CharPurchased(
//                           pic: charcters[index].image,
//                         ));
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                             color: charcters[index].btnclr,
//                             border: Border.all(
//                               color: charcters[index].clr,
//                             ),
//                             borderRadius: BorderRadius.circular(20)),
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 4.w, vertical: 1.h),
//                         margin: EdgeInsets.symmetric(horizontal: 1.w),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               height: 10.h,
//                               width: 22.w,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(90)),
//                               child: ClipRRect(
//                                 borderRadius: BorderRadius.circular(90),
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.cover,
//                                   imageUrl: charcters[index].image.toString(),
//                                   progressIndicatorBuilder:
//                                       (context, url, progress) =>
//                                           CircularProgressIndicator(),
//                                   errorWidget: (context, url, error) =>
//                                       Image.asset(
//                                     'assets/12.png',
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 1.h,
//                             ),
//                             Align(
//                               alignment: Alignment.center,
//                               child: Column(
//                                 children: [
//                                   Text(
//                                     'Player ${index + 1}',
//                                     style: TextStyle(
//                                       color: charcters[index].clr,
//                                       fontSize: 15.sp,
//                                       fontWeight: FontWeight.w600,
//                                       fontFamily: 'Poppins',
//                                       letterSpacing: 1.5,
//                                     ),
//                                   ),
//                                   Align(
//                                     child: Column(
//                                       crossAxisAlignment:
//                                           CrossAxisAlignment.center,
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.center,
//                                       children: [
//                                         Text(
//                                           'Points ${index + 10}',
//                                           style: TextStyle(
//                                               fontSize: 13.sp,
//                                               color: Color(0xff2c2c2c)),
//                                         ),
//                                         SizedBox(
//                                           height: 0.h,
//                                         ),
//                                         InkWell(
//                                           onTap: () {},
//                                           child: Container(
//                                             alignment: Alignment.center,
//                                             width: 27.w,
//                                             margin: EdgeInsets.only(top: 1.h),
//                                             decoration: BoxDecoration(
//                                                 borderRadius:
//                                                     BorderRadius.circular(90),
//                                                 color: primary),
//                                             padding: EdgeInsets.all(0.5.h),
//                                             child: Text(
//                                               'View',
//                                               style: TextStyle(
//                                                 fontSize: 15.sp,
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Colors.white,
//                                                 fontFamily: 'Poppins',
//                                               ),
//                                             ),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
// // viewap() {
// //   final Map<String, String> data = {};
// //
// //   data['uid'] = usermodal?.userData?.uid ?? "";
// //   data['action'] = 'profile_view_player';
// //
// //   checkInternet().then((internet) async {
// //     if (internet) {
// //       authprovider().profileviewapi(data).then((response) async {
// //         profileviewmodal =
// //             ProfileviewModal.fromJson(json.decode(response.body));
// //
// //         if (response.statusCode == 200 &&
// //             profileviewmodal?.status == "success") {
// //           setState(() {
// //             isLoading = false;
// //           });
// //         } else {}
// //       });
// //     } else {
// //       setState(() {
// //         isLoading = false;
// //       });
// //       buildErrorDialog(context, 'Error', "Internate Required");
// //     }
// //   });
// // }
// //
// // shopitems() {
// //   final Map<String, String> data = {};
// //
// //   // data['uid'] = usermodal?.userData?.uid ?? "";
// //   data['action'] = 'all_items';
// //
// //   checkInternet().then((internet) async {
// //     if (internet) {
// //       authprovider().shopapi(data).then((response) async {
// //         shop = shopitemModal.fromJson(json.decode(response.body));
// //
// //         if (response.statusCode == 200 && shop?.status == "success") {
// //           setState(() {
// //             isLoading = false;
// //           });
// //         } else {}
// //       });
// //     } else {
// //       setState(() {
// //         isLoading = false;
// //       });
// //       buildErrorDialog(context, 'Error', "Internate Required");
// //     }
// //   });
// // }
// }
import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';
import 'package:jicksaw/Modal/playermodal.dart';


import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/profile/userprofilepage.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class AllPlayerspage extends StatefulWidget {
  const AllPlayerspage({Key? key}) : super(key: key);

  @override
  State<AllPlayerspage> createState() => _AllPlayerspageState();
}

final List<String> items = [
  'Math Challenge',
  'Trivia Challenge',
  'Memory Challenge',
];
int selectedValuei = 0;
String? selectedcate;

int selectedValuei2 = -1;
bool selectedi = false;
bool selecteda = false;
String? selectedValue;
final List<String> imgs = [
  'assets/chs/mathchs.jpg',
  'assets/chs/memory1.png',
  'assets/chs/triviach.jpg',
];

int? selectedagei = 0;
int? selectedagei2 = -1;
final List<String> ages = [
  'Below 18',
  '18 to 23',
  '24 to 28',
  '29 to 35',
  'Above 35',
];
final List<String> ageimgs = [
  'assets/chs/child1.png',
  'assets/chs/teeneger1.png',
  'assets/chs/midage1.png',
  'assets/chs/adult1.png',
  'assets/chs/old1.png',
];
bool isloading = true;
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _AllPlayerspageState extends State<AllPlayerspage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // categori();
    playersapi();
    setState(() {
      selectedagei2 = -1;
      selectedValuei2 = -1;
      selectedagei = 0;
      selectedValuei = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isloading,

      scaffold: Scaffold(
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: drawer1(),
        appBar: appbar1(title1: 'All Players', press: (){ _scaffoldKey.currentState?.openDrawer();}, icn: Icon(Icons.menu), act: (){}, icn1: Icon(null)),
        backgroundColor: bgcolor,
        body: SingleChildScrollView(
          child: isloading
              ? Container()
              : Center(
            child: Stack(
              children: [
                Container(
                    height: 100.h,
                    child: Image.asset(
                      'assets/wall2.webp',
                      fit: BoxFit.fitHeight,
                    )),
                Container(
                  height: 100.h,
                  color: Colors.black.withOpacity(0.40),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      SizedBox(height: 15.h),
                      SizedBox(
                        height: 82.h,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: players?.allPlayers?.length,
                          gridDelegate:
                          SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1 / 1.4),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.all(2.w),
                              padding: EdgeInsets.all(3.w),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.black.withOpacity(0.8),
                                    width: 2),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 1.w),
                                    height: 8.5.h,
                                    width: 17.w,
                                    child: ClipRRect(
                                      borderRadius:
                                      BorderRadius.circular(90),
                                      child: CachedNetworkImage(
                                        fit: BoxFit.cover,
                                        imageUrl:
                                        players?.allPlayers?[index].profilePic ?? '',
                                        progressIndicatorBuilder: (context,
                                            url, progress) =>
                                            CircularProgressIndicator(),
                                        errorWidget:
                                            (context, url, error) =>
                                            Image.asset(
                                              'assets/user.png',
                                              color: Colors.black,
                                            ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    players?.allPlayers?[index].name ?? '',
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 14.sp),
                                  ),
                                  SizedBox(
                                    height: 1.h,
                                  ),
                                  Text(
                                    players?.allPlayers?[index].eMail ?? '',
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 13.sp),
                                  ),
                                  SizedBox(
                                    height: 2.h,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Get.to(UserProfile(uid: players?.allPlayers?[index].uid ?? '',));
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 5.2.h,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                          BorderRadius.circular(900),
                                          color: primary),
                                      child: Text("View Profile",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Poppins',
                                              letterSpacing: 2,
                                              fontSize: 12.sp)),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  playersapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'all_players';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getplayers(data).then((response) async {
          players = AllplayersModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && players?.status == "success") {
            setState(() {
              isloading = false;
            });
          } else {
            setState(() {
              isloading = false;
            });
          }
        });
      } else {
        setState(() {
          isloading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}