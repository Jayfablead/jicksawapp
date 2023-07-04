import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/playermodal.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Shop/gameinfoshop.dart';
import 'package:jicksaw/Widget/hexcolor.dart';

import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/profile/userprofilepage.dart';
import 'package:jicksaw/purchage/Charpurpage.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';
import '../Widget/drawer.dart';

class Allplayerspage extends StatefulWidget {
  const Allplayerspage({Key? key}) : super(key: key);

  @override
  State<Allplayerspage> createState() => _AllplayerspageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game {
  String? image;
  String? name;
  Color clr;
  String? star;
  String? price;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr, {this.price});
}

List<game> charcters = [
  game(
      "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
      "Bear",
      Colors.green.shade900,
      'Character',
      Color(0xffE1F8DC),
      price: '0.99'),
  game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
      Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game(
      "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      "Fox",
      Colors.orange.shade900,
      'Character',
      Color(0xffffdcbe),
      price: '1.99'),
  game(
      "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
      "Bear",
      Colors.green.shade900,
      'Character',
      Color(0xffE1F8DC),
      price: '0.99'),
  game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
      Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game(
      "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      "Fox",
      Colors.orange.shade900,
      'Character',
      Color(0xffffdcbe),
      price: '1.99'),
  game(
      "https://e0.pxfuel.com/wallpapers/105/23/desktop-wallpaper-compromised-character-gaming-profile-dark-cute-cartoon-boys.jpg",
      "Bear",
      Colors.green.shade900,
      'Character',
      Color(0xffE1F8DC),
      price: '0.99'),
  game("https://wallpapers.com/images/featured/87h46gcobjl5e4xu.jpg", "Lion",
      Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game(
      "https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",
      "Fox",
      Colors.orange.shade900,
      'Character',
      Color(0xffffdcbe),
      price: '1.99'),
];
bool isLoading = true;

class _AllplayerspageState extends State<Allplayerspage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // viewap();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: 'All Players',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        key: _scaffoldKey,
        body: isLoading
            ? Container()
            : SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 2.5.w,vertical: 0.5.h),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: primary,
                              ),
                              borderRadius: BorderRadius.circular(20)),

                          alignment: Alignment.center,
                          child: TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13.sp,
                              fontFamily: 'Poppins',
                              letterSpacing: 2,
                            ),
                            // controller: _user,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter the email";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.transparent,
                                    )),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                ),
                                errorBorder: const UnderlineInputBorder(
                                  borderSide:
                                  BorderSide(color: Colors.transparent),
                                ),
                                suffixIcon: const Icon(
                                  Icons.search,
                                  color: Colors.black,
                                ),
                                hintText: "Search Player",
                                errorStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 1,
                                    fontSize: 11.sp),
                                hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontFamily: 'Poppins',
                                    letterSpacing: 2,
                                    fontSize: 13.sp)),
                          ),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 80.h,
                          child: GridView.builder(
                            padding: EdgeInsets.zero,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 1.h,
                              crossAxisSpacing: 0.w,
                              childAspectRatio: 0.55,
                            ),
                            shrinkWrap: true,
                            // scrollDirection: Axis.horizontal,
                            itemCount: players?.allPlayers?.length,

                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  // Get.to(CharPurchased(
                                  //   pic: charcters[index].image,
                                  // ));
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: HexColor.fromHex("#FFE8DB"),
                                      border: Border.all(
                                        color: HexColor.fromHex('#007780'),
                                      ),
                                      borderRadius: BorderRadius.circular(20)),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.w, vertical: 1.h),
                                  margin: EdgeInsets.symmetric(horizontal: 1.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 10.h,
                                        width: 22.w,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(90)),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(90),
                                          child: CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            imageUrl: players
                                                    ?.allPlayers?[index]
                                                    .profilePic ??
                                                '',
                                            progressIndicatorBuilder:
                                                (context, url, progress) =>
                                                    CircularProgressIndicator(),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Image.asset(
                                              'assets/12.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1.h,
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                          children: [
                                            Text(
                                              players?.allPlayers?[index]
                                                      .name ??
                                                  '',
                                              style: TextStyle(
                                                color:
                                                    HexColor.fromHex('#007780'),
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins',
                                                letterSpacing: 1.5,
                                              ),
                                            ),
                                            Align(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    players?.allPlayers?[index]
                                                            .eMail ??
                                                        '',
                                                    maxLines: 2,
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                  Text(
                                                    "${players?.allPlayers?[index].gamePoints ?? ''} Points",
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                  Text(
                                                    players?.allPlayers?[index]
                                                                    .about ==
                                                                '' ||
                                                            players
                                                                    ?.allPlayers?[
                                                                        index]
                                                                    .about ==
                                                                null
                                                        ? 'N/A'
                                                        : players
                                                                ?.allPlayers?[
                                                                    index]
                                                                .about ??
                                                            '',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13.sp,
                                                        color:
                                                            Color(0xff2c2c2c)),
                                                  ),
                                                  InkWell(
                                                    onTap: () {Get.to(UserProfile(uid:players?.allPlayers?[index].uid));},
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      width: 27.w,
                                                      margin: EdgeInsets.only(
                                                          top: 1.h),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(90),
                                                          color: primary),
                                                      padding:
                                                          EdgeInsets.all(0.5.h),
                                                      child: Text(
                                                        'View',
                                                        style: TextStyle(
                                                          fontSize: 15.sp,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white,
                                                          fontFamily: 'Poppins',
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }

// viewap() {
//   final Map<String, String> data = {};
//
//   data['uid'] = usermodal?.userData?.uid ?? "";
//   data['action'] = 'profile_view_player';
//
//   checkInternet().then((internet) async {
//     if (internet) {
//       authprovider().profileviewapi(data).then((response) async {
//         profileviewmodal =
//             ProfileviewModal.fromJson(json.decode(response.body));
//
//         if (response.statusCode == 200 &&
//             profileviewmodal?.status == "success") {
//           setState(() {
//             isLoading = false;
//           });
//         } else {}
//       });
//     } else {
//       setState(() {
//         isLoading = false;
//       });
//       buildErrorDialog(context, 'Error', "Internate Required");
//     }
//   });
// }
//
  shopitems() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'all_players';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getplayers(data).then((response) async {
          players = AllplayersApiModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && players?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {
            setState(() {
              isLoading = false;
            });
          }
        });
      } else {
        setState(() {
          isLoading = false;
        });
        buildErrorDialog(context, 'Error', "Internate Required");
      }
    });
  }
}
