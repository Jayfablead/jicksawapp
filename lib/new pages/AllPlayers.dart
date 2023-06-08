import 'dart:convert';
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';
import 'package:jicksaw/Modal/playermodal.dart';
import 'package:jicksaw/Questions/FirstQuestion.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/drawer.dart';
import 'package:jicksaw/new%20pages/userprofilepage.dart';
import 'package:jicksaw/other/const%20widget.dart';
import 'package:jicksaw/question.dart';
import 'package:sizer/sizer.dart';

import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';

class AllPlayers extends StatefulWidget {
  const AllPlayers({Key? key}) : super(key: key);

  @override
  State<AllPlayers> createState() => _AllPlayersState();
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

class _AllPlayersState extends State<AllPlayers> {
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
