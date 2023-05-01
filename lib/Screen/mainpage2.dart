import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:jicksaw/design.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class mainpage2 extends StatefulWidget {
  const mainpage2({Key? key}) : super(key: key);
  @override
  State<mainpage2> createState() => _mainpage2State();
}

class Sachen {
  String? image;
  String? name;
  int? score;
  Sachen(this.image, this.name, this.score);
}

class _mainpage2State extends State<mainpage2> {
  List<Sachen> past = [
    Sachen("https://cdn-icons-png.flaticon.com/512/6857/6857448.png",
        "26/3/2023", 130),
    Sachen("https://cdn-icons-png.flaticon.com/512/6299/6299781.png",
        "26/3/2023", 170),
    Sachen("https://cdn-icons-png.flaticon.com/512/5558/5558292.png",
        "26/3/2023", 30),
    Sachen("https://cdn-icons-png.flaticon.com/512/6084/6084990.png",
        "26/3/2023", 230),
    // Sachen("https://www.flaticon.com/free-sticker/jigsaw_8165729?term=puzzle+pieces&page=1&position=7&origin=search&related_id=8165729","26/3/2023",1530),
  ];
  List<String> data = ["Previous", "Ongoing", "Eventual"];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgcolor,
        body: WillPopScope(onWillPop: dialog,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.all(5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hii Jack",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'game'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.category,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    height: 4.h,
                    // width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                select = index;
                              });
                            },
                            child: Container(
                              height: 4.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 1.h),
                              margin: EdgeInsets.only(right: 3.w),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: (select == index)
                                    ? primary
                                    : secondary,
                              ),
                              child: Text(
                                data[index].toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'game',
                                    fontSize: 10.sp),
                              ),
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    child: Text(
                      'Continue Playing',
                      style: TextStyle(
                          fontFamily: 'game',
                          fontWeight: FontWeight.bold,
                          fontSize: 12.sp,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Transform(
                        transform: Matrix4.skewY(-0.05),
                        child: Container(
                          padding: EdgeInsets.all(15),
                          height: 20.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(209, 4, 43, 1),
                                Color.fromRGBO(214, 61, 99, 1),
                              ],
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jigsaw Puzzle',
                              style: TextStyle(
                                  fontFamily: 'game',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Text(
                              'LEVEL 1',
                              style: TextStyle(
                                  fontFamily: 'game',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10.sp,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            Padding(
                              padding:
                                  EdgeInsets.only(top: 10, right: 15, left: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircularPercentIndicator(
                                    radius: 20.sp,
                                    lineWidth: 6.0,
                                    animation: true,
                                    percent: 0.2,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    progressColor: Colors.black87,
                                  ),
                                  GestureDetector(
                                    onTap: () => Get.to(GameInfo()),
                                    child: Transform(
                                      transform: Matrix4.skewX(-0.05),
                                      origin: Offset(50.0, 50.0),
                                      child: Material(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(10)),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 30,
                                              right: 30,
                                              top: 10,
                                              bottom: 10),
                                          child: Text(
                                            'PLAY',
                                            style: TextStyle(
                                                color: Colors.red.shade600,
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'game'),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 10.h,
                        left: 65.w,
                        child: Image(
                          image: AssetImage('assets/puzzle.png'),
                          height: 140,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 3.h),
                    child: Text(
                      'Discover Games',
                      style: TextStyle(
                          fontFamily: 'game',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    height: 35.h,
                    width: MediaQuery.of(context).size.width,
                    // color:Colors.green ,
                    child: ListView.builder(
                        clipBehavior: Clip.none,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: past.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.only(right: 5.w),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Transform(
                                  transform: Matrix4.skewY(-0.2),
                                  origin: Offset(50.0, 50.0),
                                  child: Container(
                                    padding: EdgeInsets.all(15),
                                    height: 35.h,
                                    width: 50.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromRGBO(234, 70, 61, 1),
                                          Color.fromRGBO(238, 109, 43, 1),
                                        ],
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15.h, left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        past[index].name.toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontFamily: 'game'),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color.fromRGBO(245, 196, 148, 1)
                                              .withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 15,
                                              right: 15,
                                              top: 5,
                                              bottom: 5),
                                          child: Row(
                                            children: [
                                              Text(
                                                '3.5',
                                                style: TextStyle(
                                                  fontFamily: 'game',
                                                  color: Colors.white,
                                                  fontSize: 12.sp,
                                                ),
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      Text(
                                        "Score : " + past[index].score.toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12.sp,
                                            fontFamily: 'game'),
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  bottom: 25.h,
                                  left: 20,
                                  child: Image(
                                    image: NetworkImage(
                                        past[index].image.toString()),
                                    height: 160,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<bool> dialog() async {
    exit(context);
    return await false;
  }
}
