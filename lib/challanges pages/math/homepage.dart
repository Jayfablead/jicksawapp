import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/challanges%20pages/math/result.dart';
import 'package:jicksaw/main%20Pages/congratulation.dart';
import 'package:sizer/sizer.dart';

import '../../Widget/const widget.dart';
import 'const.dart';
import 'my_buttons.dart';

class MathtPage extends StatefulWidget {
  const MathtPage({Key? key}) : super(key: key);

  @override
  State<MathtPage> createState() => _MathtPageState();
}

class _MathtPageState extends State<MathtPage> {
  int numberA = 0;
  int numberB = 0;
  String cat = Get.arguments['catid'];
  String age = Get.arguments['age'];
  String type = Get.arguments['type'];
  List<String> numberPad = [
    '7',
    '8',
    '9',
    'C',
    '4',
    '5',
    '6',
    'del',
    '1',
    '2',
    '3',
    '=',
    '0',
  ];
  String userAnswer = '';

  void buttonTapped(String button) {
    setState(() {
      if (button == '=') {
        checkResult();
      } else if (button == 'C') {
        userAnswer = '';
      } else if (button == 'del') {
        if (userAnswer.isNotEmpty) {
          userAnswer = userAnswer.substring(0, userAnswer.length - 1);
        }
      } else if (userAnswer.length <= 3) {
        userAnswer += button;
      }
      ;
    });
  }

  void checkResult() {
    userAnswer == ''
        ? showDialog(
            context: context,
            builder: (context) {
              return Result(
                  message: 'Please Enter Answer!',
                  onTap: stayback,
                  icon: Icons.done);
            })
        : (numberA + numberB == int.parse(userAnswer))
            ? showDialog(
                context: context,
                builder: (context) {
                  return Result(
                      message: 'Correct!',
                      onTap: (){Get.off(congratulation(age: age,cat: cat,type: type,));},
                      icon: Icons.arrow_forward);
                })
            : showDialog(
                context: context,
                builder: (context) {
                  return Result(
                      message: 'Sorry try again',
                      onTap: goBackToQuestion,
                      icon: Icons.rotate_left);
                });
  }

  var randomNumber = Random();

  void goBackToQuestion() {
    Get.back();
  }

  void stayback() {
    Get.back();
  }

  void gotoNextQuestion() {
    Navigator.of(context).pop();
    setState(() {
      userAnswer = '';
    });
    numberA = randomNumber.nextInt(100);
    numberB = randomNumber.nextInt(100);
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    print(cat);
    print(age);
    print(type);
    numberA = randomNumber.nextInt(100);
    numberB = randomNumber.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      bgcolor
      // Colors.black
      ,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
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
                  'Math Challenge',
                  style: primarytxt1,
                ),
                SizedBox(
                  width: 7.w,
                )
              ],
            ),
            Expanded(
                child: Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        numberA.toString() +
                            ' + ' +
                            numberB.toString() +
                            ' =  ',
                        style: whiteTextStyle),
                    userAnswer == ''
                        ? Container()
                        : Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(horizontal: 5.w),
                            height: 7.h,
                            decoration: BoxDecoration(
                                color: primary,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                userAnswer,
                                style: blackTextStyle,
                              ),
                            ),
                          )
                  ],
                ),
              ),
            )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: GridView.builder(
                    itemCount: numberPad.length,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                    itemBuilder: (context, index) {
                      return MyButton(
                        child: numberPad[index],
                        onTap: () => buttonTapped(numberPad[index]),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
