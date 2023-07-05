import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/challenegeModal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Screen/choicech.dart';
import 'package:jicksaw/Screen/choiceque.dart';
import 'package:jicksaw/Screen/doubleque.dart';

import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/loader.dart';

import 'package:jicksaw/main%20Pages/gameinfo.dart';
import 'package:jicksaw/main.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:jicksaw/main%20Pages/jigsawclipper.dart';
import 'package:jicksaw/jigsawcontainer.dart';
import 'package:jicksaw/main%20Pages/question.dart';
import 'package:jicksaw/purchage/mysteryque.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/const.dart';

class design extends StatefulWidget {
  String? cat;
  String? age;

  design({Key? key, this.age, this.cat}) : super(key: key);

  @override
  State<design> createState() => _designState();
}

class _designState extends State<design> with TickerProviderStateMixin {
  int? tap = 0;
  bool _showImage = false;
  AnimationController? _animationController;
  int? _value;
  int count = 0;
  double marginheight = 0.0;
  double margin = 0.0;
  String? step;
  final List<String> pages = ['/MemoryChallenge', '/MathtPage'];
  final Random random = Random();

  // List navigation = [
  //   MemoryChallenge(),
  //   Get.to(TriviaChallenge()),
  //   Get.to(Board()),
  //   Get.to(MathtPage()),
  // ];
  List<AlertDialog> alertDialogs = [
    AlertDialog(
      title: Text('Message 1'),
      content: Text('This is Message 1'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {},
        ),
      ],
    ),
    AlertDialog(
      title: Text('Message 2'),
      content: Text('This is Message 2'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {},
        ),
      ],
    ),
    // Add more AlertDialog widgets as needed
  ];

  @override
  void initState() {
    super.initState();
    setState(() {
      count = 0;
      print('*-*-*-*-*-*-*-*-*-* ${count}');
      gameapi();
    });
    _animationController = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {
            _showImage = false;
          });
        }
      });
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  double marginValue = 140.0;
  int cnt = 0;
  bool isloading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // mystery_dialogs = [
    //   update(context, 'Bonus Point', 'You Have Won a Piece and a Exra turn',
    //       callback: challwin),
    //   update(context, 'Penalty', 'You Have put Back last Piece You Win',
    //       callback: challwin)
    // ];
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
          drawer: drawer1(),
          key: _scaffoldKey,
          backgroundColor: bgcolor
          // Colors.black
          ,
          appBar: appbar1(
              title1: '',
              press: () {},
              icn: Icon(null),
              act: () {
                gameexit(context, 'Are You Sure ?', 'You want to Quit?',
                    callback: endapi);
              },
              icn1: Icon(Icons.logout_rounded)),
          body: SingleChildScrollView(
            child: isloading
                ? Container()
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    height: 100.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: '',
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/user.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Player 1 ',
                                  style: TextStyle(fontSize: 17.sp),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Points ',
                                  style: TextStyle(fontSize: 17.sp),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 7.h,
                                  width: 15.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(90)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(90),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.cover,
                                      imageUrl: '',
                                      progressIndicatorBuilder:
                                          (context, url, progress) =>
                                              CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                        'assets/user.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Player 2 ',
                                  style: TextStyle(fontSize: 17.sp),
                                ),
                                SizedBox(
                                  height: 1.h,
                                ),
                                Text(
                                  'Points ',
                                  style: TextStyle(fontSize: 17.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Visibility(
                              visible: !_showImage,
                              child: (_value == 6)
                                  ? Image.asset(
                                      "assets/dice/6.png",
                                      height: 15.h,
                                      width: 30.w,
                                      color: Colors.black,
                                    )
                                  : (_value == 5)
                                      ? Image.asset(
                                          "assets/dice/5.png",
                                          height: 15.h,
                                          width: 30.w,
                                          color: Colors.black,
                                        )
                                      : (_value == 4)
                                          ? Image.asset(
                                              "assets/dice/4.png",
                                              height: 15.h,
                                              width: 30.w,
                                              color: Colors.black,
                                            )
                                          : (_value == 3)
                                              ? Image.asset(
                                                  "assets/dice/3.png",
                                                  height: 15.h,
                                                  width: 30.w,
                                                  color: Colors.black,
                                                )
                                              : (_value == 2)
                                                  ? Image.asset(
                                                      "assets/dice/2.png",
                                                      height: 15.h,
                                                      width: 30.w,
                                                      color: Colors.black,
                                                    )
                                                  : (_value == 1)
                                                      ? Image.asset(
                                                          "assets/dice/1.png",
                                                          height: 15.h,
                                                          width: 30.w,
                                                          color: Colors.black,
                                                        )
                                                      : Container(),
                            ),
                            Visibility(
                              visible: _showImage,
                              child: Lottie.asset(
                                "assets/dice.json",
                                height: 30.h,
                                width: 60.w,
                                controller: _animationController,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  _showImage = true;
                                });
                                _animationController!.reset();
                                _animationController!.forward();
                                Timer(const Duration(seconds: 3), () {
                                  setState(() {
                                    _value = Random().nextInt(6) + 1;
                                    print(_value);
                                    stepsapi();
                                    _showImage = false;
                                  });
                                });
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 35.w,
                                margin: EdgeInsets.only(top: 2.h),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(90),
                                    color: primary),
                                padding: EdgeInsets.all(2.h),
                                child: Text(
                                  (_value == null) ? 'Roll Dice' : "Roll again",
                                  style: TextStyle(
                                    fontSize: 13.sp,
                                    color: Colors.white,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                      ],
                    ),
                  ),
          )),
    );
  }

  gameapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] =  "45";
    data['game_status'] = '1';
    data['action'] = 'get_follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().gameapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && gamedata?.status == "success") {
            print(
                "-=-=-=-=-=--=-=-=-=-=-=-=-=-=-=-=- run: ${gamedata?.gameData?.steps}");
            print('*-*-*-*-*-*-*-*-*-* ${count}');
            gamedata?.gameData?.steps == '14'
                ? update(context, 'Loss', 'You Lost This Game',
                    callback: endapi)
                : null;
            gamedata?.gameData?.steps == '14'
                ? update(context, 'Loss', 'You Lost This Game',
                    callback: endapi)
                : null;

            setState(() {
              step = gamedata?.gameData?.steps;
              isloading = false;
            });
          } else {
            isloading = false;
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

  stepsapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] = "45";
    data['game_status'] = '1';
    data['steps_on_dice'] = '1';
    // data['steps_on_dice'] = _value.toString();
    data['action'] = 'follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().stepsapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            gameapi();
            setState(() {
              isloading = false;
            });
          } else {
            isloading = false;
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

  endapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    // data['uid'] = '45';

    data['action'] = 'game_end';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().endapi(data).then((response) async {
          gamedata = gameModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {
            Get.offAll(Tutorial());
            Get.snackbar(
              "Game Ended",
              "Successfully",
              icon: Image(image: AssetImage('assets/logo.png')),
              snackPosition: SnackPosition.TOP,
            );
            setState(() {
              isloading = false;
            });
          } else {
            isloading = false;
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

  void goquestions() async {
    await Get.to(question(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gomystry() async {
    await Get.to(Mysteryque(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void goupdated() async {
    await Get.to(doublech(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gochoice() async {
    await Get.to(choceque(
      ageId: widget.age,
      catId: widget.cat,
    ));
  }

  void gochoicech() async {
    await Get.to(choicechs(
      age: widget.age,
      cat: widget.cat,
      type: 'choice',
    ));
  }

  void gochallange() {
    int index = random.nextInt(pages.length);
    Get.toNamed(pages[index], arguments: {
      'catid': widget.cat,
      'age': widget.age,
      'type': 'chellenge'
    });
  }

  void showRandomAlertDialog() {
    int randomIndex = random.nextInt(alertDialogs.length);
    AlertDialog randomAlertDialog = alertDialogs[randomIndex];

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return randomAlertDialog;
      },
    );
  }

  challwin() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'winning_challenges';
    data['chellenge_type'] = gamedata?.gameData?.steps == '5'
        ? 'bonus'
        : gamedata?.gameData?.steps == '13'
            ? 'mystery'
            : gamedata?.gameData?.steps == '9'
                ? 'warp'
                : 'penalty';
    data['ans'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().winchal(data).then((response) async {
          chalns = challModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chalns?.status == "success") {
            Get.back();
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

  warp() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'winning_challenges';
    data['chellenge_type'] = 'warp';
    data['ans'] = '1';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().winchal(data).then((response) async {
          chalns = challModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chalns?.status == "success") {
            Get.back();
            gameapi();
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
