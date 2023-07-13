import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Game%20Modals/playerQuitModal.dart';
import 'package:jicksaw/Game%20Modals/playerloadModal.dart';
import 'package:jicksaw/Modal/GameDetilsModal.dart';
import 'package:jicksaw/Modal/diceRollModal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Modal/isrollDiceModal.dart';
import 'package:jicksaw/Screen/Homepage.dart';
import 'package:jicksaw/Widget/buildErrorDialog.dart';
import 'package:jicksaw/Widget/hexcolor.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import '../Provider/authprovider.dart';
import '../Widget/const.dart';

class design extends StatefulWidget {
  String? cat;
  String? oppid;

  design({Key? key, this.cat, this.oppid}) : super(key: key);

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
  String? dicenum;
  final List<String> pages = ['/MemoryChallenge', '/MathPage'];
  final Random random = Random();
  String? userid;
  String? opid;
  Timer? _timer;
  Timer? _roller;

  @override
  void initState() {
    super.initState();
    setState(() {
      count = 0;
      userid = usermodal?.userData?.uid ?? "";

      print('*-*-*-*-*-*-*-*-*-* ${count}');
      liveupdateapi();
      _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
        Playrloading();
        liveupdateapi();
        isRollDiceAPi();
      });
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
    setState(() {
      _timer?.cancel();
    });

    super.dispose();
  }

  double marginValue = 140.0;
  int cnt = 0;
  bool isloading = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isloading,
      scaffold: Scaffold(
          extendBodyBehindAppBar: true,
          drawer: drawer1(),
          key: _scaffoldKey,
          backgroundColor: bgcolor,
          appBar: appbar1(
              title1: '',
              press: () {},
              icn: Icon(null),
              act: () {
                gameexit(context, 'Are You Sure ?', 'You want to Quit?',
                    callback: () {
                  print('Done');
                  PlayerQuitApi();
                });
              },
              icn1: Icon(
                Icons.logout_rounded,
                color: Colors.white,
              )),
          body: SingleChildScrollView(
            child: isloading
                ? Container()
                : Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.w),
                    height: 100.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      colors: [
                        HexColor.fromHex('#ff5d00'),
                        HexColor.fromHex('#ff5d00'),
                        HexColor.fromHex('#ff9900'),
                        HexColor.fromHex('#ffb600'),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    )),
                    child: Container(
                      margin: EdgeInsets.only(top: 15.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text(
                                livegamedetails?.gameDetails?.currentTurn ==
                                        userid
                                    ? 'Your Turn'
                                    : 'Opponent\'s Turn',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15.sp),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 2.w),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1.w),
                                          height: livegamedetails?.gameDetails
                                                      ?.currentTurn ==
                                                  livegamedetails?.gameDetails
                                                      ?.player1?.uid
                                              ? 11.h
                                              : 9.h,
                                          width: livegamedetails?.gameDetails
                                                      ?.currentTurn ==
                                                  livegamedetails?.gameDetails
                                                      ?.player1?.uid
                                              ? 23.w
                                              : 19.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              border: Border.all(
                                                  color: livegamedetails
                                                              ?.gameDetails
                                                              ?.currentTurn ==
                                                          livegamedetails
                                                              ?.gameDetails
                                                              ?.player1
                                                              ?.uid
                                                      ? Colors.blue.shade900
                                                      : Colors.grey,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player1?.uid
                                                ? CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl: livegamedetails
                                                            ?.gameDetails
                                                            ?.player1
                                                            ?.profilePic ??
                                                        '',
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                progress) =>
                                                            CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Image.asset(
                                                      'assets/user.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                : ColorFiltered(
                                                    colorFilter:
                                                        ColorFilter.mode(
                                                      Colors
                                                          .grey, // or any other color
                                                      BlendMode.hue,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fit: BoxFit.cover,
                                                      imageUrl: livegamedetails
                                                              ?.gameDetails
                                                              ?.player1
                                                              ?.profilePic ??
                                                          '',
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                                  progress) =>
                                                              CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Image.asset(
                                                        'assets/user.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        Text(
                                          livegamedetails?.gameDetails?.player1
                                                      ?.uid ==
                                                  userid
                                              ? "You"
                                              : livegamedetails?.gameDetails
                                                      ?.player1?.name ??
                                                  '',
                                          style: TextStyle(
                                              color: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player1
                                                          ?.uid
                                                  ? Colors.white
                                                  : HexColor.fromHex('#494949'),
                                              fontSize: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player1
                                                          ?.uid
                                                  ? 15.sp
                                                  : 13.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Pieces Won: ${livegamedetails?.gameDetails?.player1?.winingPiece ?? ''}",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 2.w),
                                    child: Column(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(1.w),
                                          height: livegamedetails?.gameDetails
                                                      ?.currentTurn ==
                                                  livegamedetails?.gameDetails
                                                      ?.player2?.uid
                                              ? 11.h
                                              : 9.h,
                                          width: livegamedetails?.gameDetails
                                                      ?.currentTurn ==
                                                  livegamedetails?.gameDetails
                                                      ?.player2?.uid
                                              ? 23.w
                                              : 19.w,
                                          decoration: BoxDecoration(
                                              color: Colors.white54,
                                              border: Border.all(
                                                  color: livegamedetails
                                                              ?.gameDetails
                                                              ?.currentTurn ==
                                                          livegamedetails
                                                              ?.gameDetails
                                                              ?.player2
                                                              ?.uid
                                                      ? Colors.blue.shade900
                                                      : Colors.black54,
                                                  width: 2),
                                              borderRadius:
                                                  BorderRadius.circular(90)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(90),
                                            child: livegamedetails?.gameDetails
                                                        ?.currentTurn ==
                                                    livegamedetails?.gameDetails
                                                        ?.player2?.uid
                                                ? CachedNetworkImage(
                                                    fit: BoxFit.cover,
                                                    imageUrl: livegamedetails
                                                            ?.gameDetails
                                                            ?.player2
                                                            ?.profilePic ??
                                                        '',
                                                    progressIndicatorBuilder:
                                                        (context, url,
                                                                progress) =>
                                                            CircularProgressIndicator(),
                                                    errorWidget:
                                                        (context, url, error) =>
                                                            Image.asset(
                                                      'assets/user.png',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  )
                                                : ColorFiltered(
                                                    colorFilter:
                                                        ColorFilter.mode(
                                                      Colors
                                                          .grey, // or any other color
                                                      BlendMode.hue,
                                                    ),
                                                    child: CachedNetworkImage(
                                                      fit: BoxFit.cover,
                                                      imageUrl: livegamedetails
                                                              ?.gameDetails
                                                              ?.player2
                                                              ?.profilePic ??
                                                          '',
                                                      progressIndicatorBuilder:
                                                          (context, url,
                                                                  progress) =>
                                                              CircularProgressIndicator(),
                                                      errorWidget: (context,
                                                              url, error) =>
                                                          Image.asset(
                                                        'assets/user.png',
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                          ),
                                        ),
                                        Text(
                                          livegamedetails?.gameDetails?.player2
                                                      ?.uid ==
                                                  userid
                                              ? "You"
                                              : livegamedetails?.gameDetails
                                                      ?.player2?.name ??
                                                  '',
                                          style: TextStyle(
                                              color: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player2
                                                          ?.uid
                                                  ? Colors.white
                                                  : HexColor.fromHex('#494949'),
                                              fontSize: livegamedetails
                                                          ?.gameDetails
                                                          ?.currentTurn ==
                                                      livegamedetails
                                                          ?.gameDetails
                                                          ?.player2
                                                          ?.uid
                                                  ? 15.sp
                                                  : 13.sp,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "Pieces Won: ${livegamedetails?.gameDetails?.player2?.winingPiece ?? ''}",
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Colors.white,
                                              fontFamily: 'Poppins'),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          step == '0' || step == null
                              ? SizedBox(
                                  width: 60.w,
                                  child: Text(
                                    "Tap On Roll Dice Button to Start the Game.",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15.sp),
                                  ),
                                )
                              : Column(
                                  children: [
                                 isroll?.status == 'fail' ?Visibility(
                                            visible: !_showImage,
                                            child: (step == '6')
                                                ? Image.asset(
                                                    "assets/dice/6.png",
                                                    height: 15.h,
                                                    width: 30.w,
                                                    color: Colors.white,
                                                  )
                                                : (step == '5')
                                                    ? Image.asset(
                                                        "assets/dice/5.png",
                                                        height: 15.h,
                                                        width: 30.w,
                                                        color: Colors.white,
                                                      )
                                                    : (step == '4')
                                                        ? Image.asset(
                                                            "assets/dice/4.png",
                                                            height: 15.h,
                                                            width: 30.w,
                                                            color: Colors.white,
                                                          )
                                                        : (step == '3')
                                                            ? Image.asset(
                                                                "assets/dice/3.png",
                                                                height: 15.h,
                                                                width: 30.w,
                                                                color: Colors
                                                                    .white,
                                                              )
                                                            : (step == '2')
                                                                ? Image.asset(
                                                                    "assets/dice/2.png",
                                                                    height:
                                                                        15.h,
                                                                    width: 30.w,
                                                                    color: Colors
                                                                        .white,
                                                                  )
                                                                : (step == '1')
                                                                    ? Image
                                                                        .asset(
                                                                        "assets/dice/1.png",
                                                                        height:
                                                                            15.h,
                                                                        width:
                                                                            30.w,
                                                                        color: Colors
                                                                            .white,
                                                                      )
                                                                    : Container(),
                                          )
                                        : Visibility(
                                            visible: !_showImage,
                                            child: (isroll?.data?.diceResult ==
                                                    '6')
                                                ? Image.asset(
                                                    "assets/dice/6.png",
                                                    height: 15.h,
                                                    width: 30.w,
                                                    color: Colors.white,
                                                  )
                                                : (isroll?.data?.diceResult ==
                                                        '5')
                                                    ? Image.asset(
                                                        "assets/dice/5.png",
                                                        height: 15.h,
                                                        width: 30.w,
                                                        color: Colors.white,
                                                      )
                                                    : (isroll?.data
                                                                ?.diceResult ==
                                                            '4')
                                                        ? Image.asset(
                                                            "assets/dice/4.png",
                                                            height: 15.h,
                                                            width: 30.w,
                                                            color: Colors.white,
                                                          )
                                                        : (isroll?.data
                                                                    ?.diceResult ==
                                                                '3')
                                                            ? Image.asset(
                                                                "assets/dice/3.png",
                                                                height: 15.h,
                                                                width: 30.w,
                                                                color: Colors
                                                                    .white,
                                                              )
                                                            : (isroll?.data
                                                                        ?.diceResult ==
                                                                    '2')
                                                                ? Image.asset(
                                                                    "assets/dice/2.png",
                                                                    height:
                                                                        15.h,
                                                                    width: 30.w,
                                                                    color: Colors
                                                                        .white,
                                                                  )
                                                                : (isroll?.data
                                                                            ?.diceResult ==
                                                                        '1')
                                                                    ? Image
                                                                        .asset(
                                                                        "assets/dice/1.png",
                                                                        height:
                                                                            15.h,
                                                                        width:
                                                                            30.w,
                                                                        color: Colors
                                                                            .white,
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
                                onTap: livegamedetails
                                            ?.gameDetails?.currentTurn ==
                                        userid
                                    ? () {
                                        setState(() {
                                          _showImage = true;
                                        });

                                        _animationController!.reset();
                                        _animationController!.forward();
                                        Timer(const Duration(seconds: 3), () {
                                          setState(() {
                                            _value = Random().nextInt(6) + 1;
                                            print(_value);
                                            step = _value.toString();
                                            print(step);
                                            _showImage = false;
                                          });
                                          RollDiceApi();
                                        });
                                      }
                                    : null,
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 60.w,
                                  margin: EdgeInsets.only(top: 2.h),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 3,
                                          color: livegamedetails?.gameDetails
                                                      ?.currentTurn !=
                                                  userid
                                              ? Colors.blue.shade900
                                              : Colors.transparent),
                                      borderRadius: BorderRadius.circular(90),
                                      color: livegamedetails
                                                  ?.gameDetails?.currentTurn ==
                                              userid
                                          ? Colors.white
                                          : Colors.transparent),
                                  padding: livegamedetails
                                              ?.gameDetails?.currentTurn ==
                                          userid
                                      ? EdgeInsets.all(1.35.h)
                                      : EdgeInsets.all(1.5.h),
                                  child: Text(
                                    livegamedetails?.gameDetails?.currentTurn ==
                                            userid
                                        ? (_value == null)
                                            ? 'Roll Dice'
                                            : "Roll again"
                                        : 'Wait For Your Turn',
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: livegamedetails?.gameDetails
                                                    ?.currentTurn !=
                                                userid
                                            ? Colors.white
                                            : Colors.deepOrange,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                    ),
                  ),
          )),
    );
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
            Get.offAll(mainpage2());
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

  liveupdateapi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";

    data['action'] = 'get_follow_steps';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().liveupdateapi(data).then((response) async {
          livegamedetails =
              GameDetailsModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              livegamedetails?.status == "success") {
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

  PlayerQuitApi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['player_1_id'] = livegamedetails?.gameDetails?.player1?.uid ?? '';
    data['player_2_id'] = livegamedetails?.gameDetails?.player2?.uid ?? '';

    data['action'] = 'game_quit';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().playerquitapi(data).then((response) async {
          playerquit = playerQuitModal.fromJson(json.decode(response.body));
          print(playerquit?.status);
          if (response.statusCode == 200 && playerquit?.status == "success") {
            Get.offAll(mainpage2());

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

  Playrloading() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['player_1_id'] = livegamedetails?.gameDetails?.player1?.uid ?? '';
    data['player_2_id'] = livegamedetails?.gameDetails?.player2?.uid ?? '';

    data['action'] = 'is_users_online_game';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().playerload(data).then((response) async {
          playerload = playerloadModal.fromJson(json.decode(response.body));
          print(playerload?.status);
          if (response.statusCode == 200 && playerload?.status == "success") {
            update(context, 'Opponent Left', 'Your opponent left the game.',
                callback: PlayerQuitApi);
            setState(() {
              _timer?.cancel();

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

  void gochallange() {
    int index = random.nextInt(pages.length);
    Get.toNamed(pages[index],
        arguments: {'catid': widget.cat, 'type': 'chellenge'});
  }

  RollDiceApi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['game_id'] = livegamedetails?.gameDetails?.gameId ?? '';
    data['opponent_id'] = livegamedetails?.gameDetails?.opponentId ?? '';
    data['dice_result'] = step.toString();
    data['action'] = 'roll_dice';
    print(data);
    print(step);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().Dicerollapi(data).then((response) async {
          diceroll = RollDiceModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && diceroll?.status == "success") {
            print("Dice Number : $step");
            _roller = Timer.periodic(Duration(milliseconds: 500), (timer) {

              isRollDiceAPi();
            });
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

  isRollDiceAPi() {
    final Map<String, String> data = {};

    data['uid'] = usermodal?.userData?.uid ?? "";
    data['game_id'] = livegamedetails?.gameDetails?.gameId ?? '';
    data['opponent_id'] = livegamedetails?.gameDetails?.opponentId ?? '';
    data['action'] = 'is_dice_roll';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().IsDicerollapi(data).then((response) async {
          isroll = isrollDiceModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && isroll?.status == "success") {
            print(isroll?.data?.diceResult);
            print("Is Dice Number : $step");
            print("Is Dice Get Number : ${isroll?.data?.diceResult}");
            setState(() {
              _roller?.cancel();
              dicenum = isroll?.data?.diceResult;
              isLoading = false;
            });
          } else {
            print(isroll?.data?.diceResult);
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
