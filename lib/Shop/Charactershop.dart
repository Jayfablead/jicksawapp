import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jicksaw/Modal/characterModal.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Shop/characterinfoshop.dart';
import 'package:jicksaw/Shop/gameinfoshop.dart';
import 'package:jicksaw/Widget/hexcolor.dart';

import 'package:jicksaw/Widget/loader.dart';
import 'package:jicksaw/purchage/Charpurpage.dart';
import 'package:sizer/sizer.dart';

import '../Provider/ProfileviewModal.dart';
import '../Provider/authprovider.dart';
import '../Widget/buildErrorDialog.dart';
import '../Widget/const.dart';
import '../Widget/const widget.dart';
import '../Widget/drawer.dart';

class AllShopCharacters extends StatefulWidget {
  const AllShopCharacters({Key? key}) : super(key: key);

  @override
  State<AllShopCharacters> createState() => _AllShopCharactersState();
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
      "Bear", Colors.green.shade900, 'Character', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "Lion", Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "Fox", Colors.orange.shade900, 'Character', Color(0xffffdcbe),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "Bear", Colors.green.shade900, 'Character', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "Lion", Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "Fox", Colors.orange.shade900, 'Character', Color(0xffffdcbe),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "Bear", Colors.green.shade900, 'Character', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "Lion", Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "Fox", Colors.orange.shade900, 'Character', Color(0xffffdcbe),
      price: '1.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/bear-6129368-5011612.png",
      "Bear", Colors.green.shade900, 'Character', Color(0xffE1F8DC),
      price: '0.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/lion-6129372-5011616.png",
      "Lion", Colors.deepPurple, 'Character', Color(0xffd4e0ff),
      price: '2.99'),
  game("https://cdn3d.iconscout.com/3d/premium/thumb/fox-7503935-6136921.png",
      "Fox", Colors.orange.shade900, 'Character', Color(0xffffdcbe),
      price: '1.99'),
];
bool isLoading = true;

class _AllShopCharactersState extends State<AllShopCharacters> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // viewap();
    shopitems();
  }

  @override
  Widget build(BuildContext context) {
    return commanScreen(
      isLoading: isLoading,
      scaffold: Scaffold(
        appBar: appbar1(
            title1: 'All Characters',
            press: () {
              Get.back();
            },
            icn: Icon(Icons.arrow_back_ios_new_rounded),
            act: () {},
            icn1: Icon(null)),
        key: _scaffoldKey,
        body: isLoading
            ? Container()
            : chars?.characters?.length == 0 ||
                    chars?.characters?.length == null
                ? Container(
                    height: 75.h,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'No Characters Available',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  )
                : SingleChildScrollView(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            SizedBox(height: 85.h,
                              child: GridView.builder(
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 2.h,
                                  crossAxisSpacing: 2.w,
                                  childAspectRatio: 0.75,
                                ),
                                shrinkWrap: true,
                                // scrollDirection: Axis.horizontal,
                                itemCount: chars?.characters?.length,

                                itemBuilder: (context, index) {
                                  return InkWell(
                                    onTap: () {
                                      Get.to(() => Characterinfo(
                                        id: chars?.characters?[index].productId ,
                                      ));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: HexColor.fromHex(
                                              chars?.characters?[index].bgColor ??
                                                  ''),
                                          border: Border.all(
                                            color: HexColor.fromHex(chars
                                                    ?.characters?[index]
                                                    .bgColorBorder ??
                                                ''),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 4.w, vertical: 1.h),
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 1.w),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 10.h,
                                            width: 20.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              child: CachedNetworkImage(
                                                fit: BoxFit.cover,
                                                imageUrl: (chars
                                                        ?.characters?[index]
                                                        .productImg)
                                                    .toString(),
                                                progressIndicatorBuilder: (context,
                                                        url, progress) =>
                                                    CircularProgressIndicator(),
                                                errorWidget:
                                                    (context, url, error) =>
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
                                                  (chars?.characters?[index]
                                                          .productName)
                                                      .toString(),
                                                  style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: HexColor.fromHex(chars
                                                            ?.characters?[index]
                                                            .bgColorBorder ??
                                                        ''),
                                                    fontSize: 15.sp,
                                                    fontWeight: FontWeight.w600,
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
                                                        '\$ ${(chars?.characters?[index].productPrice).toString()} / ${(chars?.characters?[index].productPoints).toString()} points',
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontSize: 13.sp,
                                                            color: Color(
                                                                0xff2c2c2c)),
                                                      ),
                                                      Text(
                                                        (chars?.characters?[index]
                                                                .productDesc)
                                                            .toString(),
                                                        overflow:
                                                            TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                            fontFamily: 'Poppins',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 13.sp,
                                                            color: Color(
                                                                0xff2c2c2c)),
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
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
      ),
    );
  }

  shopitems() {
    final Map<String, String> data = {};

    // data['uid'] = usermodal?.userData?.uid ?? "";
    data['action'] = 'all_characters_page';

    checkInternet().then((internet) async {
      if (internet) {
        authprovider().charapi(data).then((response) async {
          chars = allcharactershopModal.fromJson(json.decode(response.body));

          if (response.statusCode == 200 && chars?.status == "success") {
            setState(() {
              isLoading = false;
            });
          } else {
            setState(() {
              isLoading = false;
            });
          }
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
