import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/challanges%20pages/memory/utils/alertdialog.dart';
import 'package:jicksaw/challanges%20pages/memory/utils/game_utils.dart';
import 'package:jicksaw/const%20widget.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:sizer/sizer.dart';

import 'components/info_card.dart';

class MemoryChallenge extends StatefulWidget {
  const MemoryChallenge({Key? key}) : super(key: key);

  @override
  _MemoryChallengeState createState() => _MemoryChallengeState();
}

class _MemoryChallengeState extends State<MemoryChallenge> {
  //setting text style
  TextStyle whiteText = TextStyle(color: Colors.white);
  bool hideTest = false;
  Game _game = Game();

  //game stats
  int tries = 0;
  int score = 0;

  @override
  void initState() {
    super.initState();
    _game.initGame();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 3.h,
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
              SizedBox(
                width: 7.w,
              )
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Column(
            children: [
              SizedBox(
                  height: 70.h,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      itemCount: _game.gameImg!.length,
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
                              _game.gameImg![index] = _game.cards_list[index];
                              _game.matchCheck
                                  .add({index: _game.cards_list[index]});
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
                                        .first] = _game.hiddenCardpath;
                                    _game.gameImg![_game.matchCheck[1].keys
                                        .first] = _game.hiddenCardpath;
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
                                image: AssetImage(_game.gameImg![index]),
                                fit: BoxFit.cover,
                              ),
                            ),
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
                  ? ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: bgcolor,
                            fontSize: 13.sp,
                            fontFamily: 'game',
                            letterSpacing: 2,
                            fontWeight: FontWeight.w700),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12), // <-- Radius
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ],
      ),
    );
  }
}