import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class Memory_Challanges extends StatefulWidget {
  const Memory_Challanges({Key? key}) : super(key: key);

  @override
  State<Memory_Challanges> createState() => _Memory_ChallangesState();
}

String? im1;
String? im2;
String? im3;
String? im4;

bool sel = false;

class _Memory_ChallangesState extends State<Memory_Challanges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primary,
                    )),
                SizedBox(
                  width: 20.w,
                ),
                Text(
                  'Memory Challanges',
                  style: primarytxt1,
                ),
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            Column(
              children: [
                Row(
                  children: [
                    InkWell(
                        onTap: () {
                          setState(() {
                            String data = 'assets/challenge/ball.png';
                            List<String> fruits = data.split("/");
                            print(fruits.last);
                            im1 = fruits.last;
                          });
                        },
                        child: Image.asset(
                          'assets/challenge/ball.png',
                          height: 10.h,
                          width: 50.w,
                        )),
                    InkWell(
                        onTap: () {
                          setState(() {
                            String data = 'assets/challenge/ball1.png';
                            List<String> fruits = data.split("/");
                            print(fruits.last);
                            im2 = fruits.last;

                          });
                        },
                        child: Image.asset(
                          'assets/challenge/ball1.png',
                          height: 20.h,
                          width: 50.w,
                        )),
                  ],
                ),
                Divider(
                  color: Colors.white54,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          String data = 'assets/challenge/ball 3.png';
                          List<String> fruits = data.split("/");
                          print(fruits.last);
                          im3 = fruits.last;

                        });
                      },
                      child: Image.asset(
                        'assets/challenge/ball 3.png',
                        height: 20.h,
                        width: 50.w,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            String data = 'assets/challenge/ball.png';
                            List<String> fruits = data.split("/");
                            print(fruits.last);
                            im4 = fruits.last;

                          });
                        },
                        child: Image.asset(
                          'assets/challenge/ball.png',
                          height: 10.h,
                          width: 50.w,
                        )),
                  ],
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  if (im1 == im2) {
                    setState(() {
                      sel = true;
                      print('1');
                    });
                  } else if (im1 == im3) {
                    setState(() {
                      sel = true;print('2');
                    });
                  } else if (im1 == im4) {
                    setState(() {
                      sel = true;print('3');
                    });
                  } else if (im2 == im3) {
                    setState(() {
                      sel = true;print('4');
                    });
                  } else if (im2 == im4) {
                    setState(() {print('5');
                      sel = true;
                    });
                  } else if (im4 == im3) {
                    setState(() {
                      sel = true;print('6');
                    });
                  } else {
                    setState(() {
                      sel = false;print('7');
                    });
                  };
                  print(sel);

                  setState(() {print('8');
                    sel = false;
                    im1 = '';
                    im2 = '';
                    im3 = '';
                    im4 = '';
                  });
                  print(sel);

                },
                child: Text('Compare')),
          ],
        ),
      ),
    );
  }
}
