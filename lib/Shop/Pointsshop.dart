import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../Widget/const widget.dart';

class PointsShop extends StatefulWidget {
  const PointsShop({super.key});

  @override
  State<PointsShop> createState() => _PointsShopState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class game {
  String? image;
  String? name;
  Color clr;
  String? star;
  String? price;
  Color? btnclr;

  game(this.image, this.name, this.clr, this.star, this.btnclr, {this.price});
}

List<game> charcters = [
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "100 Points", Colors.green.shade900, 'Points', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "500 Points", Colors.deepPurple, 'Points', Color(0xffd4e0ff),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "1000 Points", Colors.orange.shade900, 'Points', Color(0xffffdcbe),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "100 Points", Colors.green.shade900, 'Points', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "500 Points", Colors.deepPurple, 'Points', Color(0xffd4e0ff),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "1000 Points", Colors.orange.shade900, 'Points', Color(0xffffdcbe),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "100 Points", Colors.green.shade900, 'Points', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "500 Points", Colors.deepPurple, 'Points', Color(0xffd4e0ff),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "1000 Points", Colors.orange.shade900, 'Points', Color(0xffffdcbe),
      price: '2.99'),
];
bool isLoading = true;

class _PointsShopState extends State<PointsShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar1(
          title1: 'Points Shop',
          press: () {
            Get.back();
          },
          icn: Icon(Icons.arrow_back_ios_new_rounded),
          act: () {},
          icn1: Icon(null)),
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              children: [
                SizedBox(
                  height: 1.5.h,
                ),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2.h,
                    crossAxisSpacing: 2.w,
                    childAspectRatio: 0.9,
                  ),
                  shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  itemCount: charcters.length,

                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            color: charcters[index].btnclr,
                            border: Border.all(
                              color: charcters[index].clr,
                            ),
                            borderRadius: BorderRadius.circular(20)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 4.w, vertical: 1.h),
                        margin: EdgeInsets.symmetric(horizontal: 1.w),
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
                                  imageUrl:
                                      'https://freepngimg.com/thumb/categories/1658.png',
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
                                    charcters[index].name.toString(),
                                    style: TextStyle(
                                      color: charcters[index].clr,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Poppins',
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  Align(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          '\$ ${charcters[index].price ?? ''}',
                                          style: TextStyle(
                                              fontSize: 13.sp,
                                              color: Color(0xff2c2c2c)),
                                        ),
                                        SizedBox(height: 0.5.h),
                                        Text(
                                          charcters[index].star.toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13.sp,
                                              color: Color(0xff2c2c2c)),
                                        ),
                                      ],
                                    ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
