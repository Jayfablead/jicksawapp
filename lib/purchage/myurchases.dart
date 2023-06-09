import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:jicksaw/Widget/drawer.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class MyPurchases extends StatefulWidget {
  const MyPurchases({Key? key}) : super(key: key);

  @override
  State<MyPurchases> createState() => _MyPurchasesState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game1 {
  String? image;
  String? name;
  String? type;
  String? star;
  String? comp;

  game1(this.image, this.name, this.type, this.star, this.comp);
}

List<game1> popular = [
  game1(
      "https://cdn.jim-nielsen.com/ios/512/jigsaw-puzzles-puzzle-games-2021-05-11.png",
      "Star Image",
      '',
      '04.99',
      'Star'),
  game1("https://m.media-amazon.com/images/I/61Q2CtZJDqL.png", "Universe Image",
      '', '03.99', 'Universe'),
];

class _MyPurchasesState extends State<MyPurchases> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: drawer1(),
      appBar: appbar1(
        title1: 'My Purchased',
        press: () {
          _scaffoldKey.currentState?.openDrawer();
        },
        icn: Icon(Icons.menu),
        act: () {},
        icn1: Icon(null),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'My Subscription : ',
                        style: TextStyle(color: primary, fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'You Have Subscribed Our Monthly Subscription Plan of \$17.99.',
                    style: mainstyle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: Colors.black54,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        'My Purchases : ',
                        style: TextStyle(color: primary, fontSize: 14.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  SizedBox(
                    height: 50.h,
                    child: ListView.builder(
                      itemCount: popular.length,
                      itemBuilder: (context, index) {
                        return Container(margin: EdgeInsets.symmetric(vertical: 1.h),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
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
                                    width: 5.w,
                                  ),
                                  Text(
                                    '${popular[index].name} ',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.sp),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ '+popular[index].star.toString(),   style: TextStyle(
                                      color: Colors.black, fontSize: 15.sp),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
