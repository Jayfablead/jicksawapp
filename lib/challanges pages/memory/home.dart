import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/memorymodal.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/challanges%20pages/memory/utils/alertdialog.dart';
import 'package:jicksaw/challanges%20pages/memory/utils/game_utils.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:jicksaw/main%20Pages/congratulation.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:sizer/sizer.dart';

import '../../Widget/const.dart';
import 'components/info_card.dart';

class MemoryChallenge extends StatefulWidget {


  MemoryChallenge({Key? key,}) : super(key: key);

  @override
  _MemoryChallengeState createState() => _MemoryChallengeState();
}

class _MemoryChallengeState extends State<MemoryChallenge> {
  //setting text style
  TextStyle whiteText = TextStyle(color: Colors.white);
  bool hideTest = false;
  Game _game = Game();
  bool isLoading = true;
  //game stats
  int tries = 0;
  int score = 0;
  String cat = Get.arguments['catid'];
  String age = Get.arguments['age'];
  String type = Get.arguments['type'];
  // String cat = "1";
  // String age = "18";
  // String type ='1';
  @override
  void initState() {
    super.initState();
    _game.initGame();
    print(cat);
    print(age);
    print(type);
    getimgs();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(isLoading: isLoading,
      scaffold: Scaffold(
        backgroundColor:
        bgcolor,
        body: isLoading?Container():Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 6.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primary,
                    )),
                Text(
                  'Memory Challenge',
                  style: primarytxt1,
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.restart_alt_rounded,color: primary,))
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Column(
              children: [
                SizedBox(
                    height: 65.h,
                    width: MediaQuery.of(context).size.width,
                    child: GridView.builder(
                        itemCount: memory?.allImages?.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 16.0,
                          mainAxisSpacing: 16.0,
                        ),
                        padding: EdgeInsets.all(16.0),
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              // print(_game.matchCheck);
                              setState(() {
                                //incrementing the clicks
                                tries++;
                                _game.gameImg![index] = memory?.allImages?[index] ?? '';
                                _game.matchCheck
                                    .add({index: memory?.allImages?[index] ?? ''});
                                print(_game.matchCheck.first);
                              });
                              if (_game.matchCheck.length == 2) {
                                if (_game.matchCheck[0].values.first ==
                                    _game.matchCheck[1].values.first) {
                                  print("true");
                                  //incrementing the score

                                  score += 200;

                                  _game.matchCheck.clear();
                                } else {
                                  print("false");

                                  Future.delayed(Duration(milliseconds: 500), () {
                                    print(_game.gameColors);
                                    setState(() {
                                      _game.gameImg![_game.matchCheck[0].keys
                                          .first] = _game.path;
                                      _game.gameImg![_game.matchCheck[1].keys
                                          .first] = _game.path;
                                      _game.matchCheck.clear();
                                    });
                                  });
                                }
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.all(16.0),
                              decoration: BoxDecoration(
                                color: secondary,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  image: NetworkImage(_game.gameImg![index],),
                                  fit: BoxFit.cover,
                                  onError: (exception, stackTrace) {
                                    setState(() {
                                      isLoading = false; // Stop showing the loader if there's an error loading the image
                                    });
                                  },
                                ),
                              ),
                              child: isLoading ? Center(child: CircularProgressIndicator()) : null,
                            ),
                          );
                        })),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    info_card("Tries", "$tries"),
                    info_card("Score", "$score"),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),
                score == 1200
                    ? InkWell(
                  onTap: () {next();},
                  child: Container(
                    alignment: Alignment.center,
                    width: 82.w,
                    margin: EdgeInsets.only(top: 0.5.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(90),
                        color: primary),
                    padding: EdgeInsets.all(1.5.h),
                    child: Text(
                      'Next',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14.sp),
                    ),
                  ),
                ):
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void next()async{
   await Get.off(congratulation(age:age,cat:cat, type: type,));

  }
  void fail()async{
   await Timer(Duration(seconds: 5), () {

    });
  }
  getimgs() {
    final Map<String, String> data = {};
    // data['uid'] = (usermodal?.userData?.uid).toString() ;
    data['action'] = 'image_chellenge';
    print(data);
    checkInternet().then((internet) async {
      if (internet) {
        authprovider().getimgapi(data).then((response) async {
          memory =
              memoryModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 &&
              profileviewmodal?.status == "success") {

            setState(() {
              isLoading = false;
            });
          } else {setState(() {
            isLoading = false;
          });}
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
