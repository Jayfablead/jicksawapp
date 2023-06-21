import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Widget/const%20widget.dart';
import 'package:sizer/sizer.dart';

class Categ extends StatefulWidget {
  const Categ({super.key});

  @override
  State<Categ> createState() => _CategState();
}

class game {
  String? image;
  String? name;
  Color? clr;
  String? star;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr);
}

List<game> popular = [
  game(
      "https://www.origastock.com/images/3d-characters/download/11.png",
      "Math",
      Colors.deepPurple.withOpacity(0.5),
      'You will Get Questions based on Maths',
      Colors.deepPurple),
  game(
      "https://www.origastock.com/images/3d-characters/download/45.png",
      "Memory",
      Colors.tealAccent.withOpacity(0.5),
      'You will Get Questions based on Memory',
      Colors.tealAccent),
  game(
      "https://www.origastock.com/images/3d-characters/download/55.png",
      "Trivia",
      Colors.deepOrangeAccent.withOpacity(0.5),
      'You will Get Random Questions ',
      Colors.deepOrangeAccent),
];

class _CategState extends State<Categ> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(title1: '', press:(){Get.back();}, icn: Icon(Icons.arrow_back_ios_new_rounded), act: (){}, icn1: Icon(null)),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              'Categories',
              style: TextStyle(
                fontSize: 22.sp,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 80.h,
              padding: EdgeInsets.symmetric(horizontal: 3.w),
              child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Stack(
                      children: [
                        Container(
                          height: 18.h,
                          width: 80.w,
                          margin: EdgeInsets.symmetric(
                            vertical: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: popular[index].clr,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 15.h,
                                width: 30.w,
                                decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(15)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    imageUrl: popular[index].image.toString(),
                                    progressIndicatorBuilder:
                                        (context, url, progress) => Center(
                                            child: CircularProgressIndicator()),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                      'assets/12.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      popular[index].name.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      popular[index].star.toString(),
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 16.h,
                          left: 71.w,
                          child: InkWell(
                            onTap: () {
                              print('Hello');
                            },
                            child: Container(
                              height: 6.h,
                              width: 13.w,
                              decoration: BoxDecoration(
                                  color: popular[index].btnclr,
                                  borderRadius: BorderRadius.circular(80)),
                              child: Icon(
                                Icons.play_arrow_rounded,
                                color: Colors.white,
                                size: 25.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  itemCount: popular.length),
            )
          ],
        ),
      ),
    );
  }
}
