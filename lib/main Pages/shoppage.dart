import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Questions/gameinfo.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';
import '../drawer.dart';
import 'shop2.dart';

class ShopmainPage extends StatefulWidget {
  const ShopmainPage({Key? key}) : super(key: key);

  @override
  State<ShopmainPage> createState() => _ShopmainPageState();
}

class game {
  String? image;
  String? name;
  String? type;
  String? star;
  String? comp;

  game(this.image, this.name, this.type, this.star, this.comp);
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
List<game> popular = [
  game(
      "https://cdn.jim-nielsen.com/ios/512/jigsaw-puzzles-puzzle-games-2021-05-11.png",
      "Puzzle mania",
      '',
      '3',
      'mania'),
  game("https://m.media-amazon.com/images/I/61Q2CtZJDqL.png", "Trivia", '', '4',
      'trivia'),
  game(
      "https://thumbnail.imgbin.com/2/12/7/imgbin-jigty-jigsaw-puzzles-candy-crush-jelly-saga-android-blue-puzzle-icon-KbQRmqHQqYHpmWbD3zDhCDivi_t.jpg",
      "Playzle",
      '',
      '3',
      'plyzle'),
  game("https://cdn-icons-png.flaticon.com/512/229/229800.png", "Role Dice", '',
      '5', 'Dice'),
  game(
      "https://is2-ssl.mzstatic.com/image/thumb/Purple128/v4/fd/ef/4f/fdef4f9f-f5fb-47a7-b66f-171d52707922/AppIcon-1x_U007emarketing-85-220-8.png/512x512bb.jpg",
      "Just Jigsaw",
      '',
      '5',
      'magic'),
];

class _ShopmainPageState extends State<ShopmainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgcolor,
      drawer: drawer1(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          print('object');
                          _scaffoldKey.currentState?.openDrawer();
                        },
                        icon: Icon(
                          Icons.menu_rounded,
                          color: primary,
                        )),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      'Shop',
                      style: primarytxt1,
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome Back Mr.Jack",
                      style: TextStyle(
                          wordSpacing: 3,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'game'),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 1.w),
                      height: 4.h,
                      width: 8.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(90),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: '',
                          progressIndicatorBuilder: (context, url, progress) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/user.png',
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular',
                      style: secondarytxtwhite,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'view more',
                          style: secondarytxt,
                        )),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(GameInfo(
                            Image: popular[index].image,
                            name: popular[index].name,
                            Star: popular[index].star,
                            comp: popular[index].comp,
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 5.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: popular[index].image.toString(),
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
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
                                      popular[index].name.toString(),
                                      style: secondarytxtwhite1,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          popular[index].star.toString(),
                                          style: TextStyle(
                                              color: Color(0xff8f8d8d)),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          '★',
                                          style: TextStyle(
                                            color: Color(0xff8f8d8d),
                                          ),
                                        ),
                                      ],
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

                // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Text('Picked ups',style: secondarytxtwhite,),
                //     TextButton(onPressed: (){}, child: Text('view more',style: secondarytxt,)),
                //   ],
                // ),
                Divider(
                  color: Colors.white,
                ),

                SizedBox(
                  height: 30.h,
                  child: ListView.builder(
                    // scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(GameInfo(
                            Image: popular[index].image,
                            name: popular[index].name,
                            Star: popular[index].star,
                            comp: popular[index].comp,
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 2.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 6.h,
                                width: 12.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: popular[index].image.toString(),
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                      'assets/12.png',
                                          fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              SizedBox(
                                width: 30.w,
                                child: Row(
                                  children: [
                                    Text(
                                      popular[index].name.toString(),
                                      style: secondarytxtwhite1,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    popular[index].star.toString(),
                                    style: TextStyle(color: Color(0xff8f8d8d)),
                                  ),
                                  SizedBox(
                                    width: 1.w,
                                  ),
                                  Text(
                                    '★',
                                    style: TextStyle(
                                      color: Color(0xff8f8d8d),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_vert_rounded,
                                    color: Colors.white,
                                    size: 15.sp,
                                  ))
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                // Divider(color: Colors.white,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Editor\'s Choice',
                      style: secondarytxtwhite,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'view more',
                          style: secondarytxt,
                        )),
                  ],
                ),
                Divider(
                  color: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 150,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: popular.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: InkWell(
                          onTap: () {
                            Get.to(GameInfo(
                              Image: popular[index].image,
                              name: popular[index].name,
                              Star: popular[index].star,
                              comp: popular[index].comp,
                            ));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 10.h,
                                width: 20.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: popular[index].image.toString(),
                                    progressIndicatorBuilder:
                                        (context, url, progress) =>
                                            CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
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
                                      popular[index].name.toString(),
                                      style: secondarytxtwhite1,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          popular[index].star.toString(),
                                          style: TextStyle(
                                              color: Color(0xff8f8d8d)),
                                        ),
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Text(
                                          '★',
                                          style: TextStyle(
                                            color: Color(0xff8f8d8d),
                                          ),
                                        ),
                                      ],
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
    );
  }
}
