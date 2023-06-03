import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/main%20Pages/purchase_Screen.dart';
import 'package:sizer/sizer.dart';

import '../other/const widget.dart';
import 'shoppage.dart';

class GameInfo extends StatefulWidget {
  String? name;
  String? Image;
  String? Star;
  String? comp;

  GameInfo({Key? key, this.name, this.Image, this.Star, this.comp})
      : super(key: key);

  @override
  State<GameInfo> createState() => _GameInfoState();
}

List img = [
  'https://sg-res.9appsdownloading.com/sg/res/jpg/34/c5/eb60664f75eec8b996e0db774e6e-hlx1.jpg',
  'https://sg-res.9appsdownloading.com/sg/res/jpg/e0/9e/452b71ef8d289e5238a7bfdb975b-ysq1.jpg',
  'https://sg-res.9appsdownloading.com/sg/res/jpg/6e/22/1d8127dc3adaeea8f733b3d915ee-nqx1.jpg',
  'https://sg-res.9appsdownloading.com/sg/res/jpg/42/c0/fbaae21a47d7f4376cb39597e7d7-9vj1.jpg',
  'https://sg-res.9appsdownloading.com/sg/res/jpg/fa/98/3e81d7d49b89e7d6fa9f488a6bca-a9n1.jpg',
];
List<game> popular = [
  game(
      "https://cdn.jim-nielsen.com/ios/512/jigsaw-puzzles-puzzle-games-2021-05-11.png",
      "Star Image",
      '',
      '3',
      'Star'),
  game("https://m.media-amazon.com/images/I/61Q2CtZJDqL.png", "Universe Image", '', '4',
      'Universe'),
  game(
      "https://thumbnail.imgbin.com/2/12/7/imgbin-jigty-jigsaw-puzzles-candy-crush-jelly-saga-android-blue-puzzle-icon-KbQRmqHQqYHpmWbD3zDhCDivi_t.jpg",
      "Actor Image",
      '',
      '3',
      'Actor'),
  game("https://cdn-icons-png.flaticon.com/512/229/229800.png", "Nature Image", '',
      '5', 'Nature'),

];
final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _GameInfoState extends State<GameInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
      bgcolor
      // Colors.black
      ,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Get.back();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: primary,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert_rounded,
                          color: primary,
                        )),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 12.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: widget.Image.toString(),
                          progressIndicatorBuilder: (context, url, progress) =>
                              CircularProgressIndicator(),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/12.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5.w),
                    SizedBox(
                      height: 11.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name.toString(),
                            style: primarytxtbig,
                          ),
                          Text(
                            widget.comp.toString(),
                            style: secondarytxt,
                          ),
                          Text(
                            "${widget.Star.toString()} ★ ",
                            style: secondarytxtwhite1,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {Get.to(PurchaseScreen(name: widget.name ,img: widget.Image,));},
                  child: Container(
                    height: 5.h,
                    alignment: Alignment.center,
                    width: 85.w,
                    margin: EdgeInsets.only(top: 2.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: primary),
                    // padding: EdgeInsets.all(2.h),
                    child: Text(
                      'Purchase',
                      style: TextStyle(
                        fontSize: 12.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Description :',
                      style: secondarytxtwhite,
                    )),
                SizedBox(
                  height: 0.5.h,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 0.5.h,
                ),
                Text(
                  ' Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                  style: secondarytxtwhite1,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Divider(
                  color: Colors.black,
                ),
                SizedBox(
                  height: 1.h,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Screenshots :',
                      style: secondarytxtwhite,
                    )),
                SizedBox(
                  height: 30.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        height: 22.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: CachedNetworkImage(
                            fit: BoxFit.cover,
                            imageUrl: img[index],
                            progressIndicatorBuilder:
                                (context, url, progress) =>
                                    Center(child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) => Image.asset(
                              'assets/12.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                    itemCount: img.length,
                  ),
                ),
             SizedBox(height: 2.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
