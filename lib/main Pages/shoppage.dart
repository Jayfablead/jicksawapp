import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';
import '../drawer.dart';

class ShopmainPage extends StatefulWidget {
  const ShopmainPage({Key? key}) : super(key: key);

  @override
  State<ShopmainPage> createState() => _ShopmainPageState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class _ShopmainPageState extends State<ShopmainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: bgcolor,
      drawer: drawer1(),
      body: Center(
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
                height: 3.h,
              ),
              Row(
                children: [
                  Text('Popular'),
                  TextButton(onPressed: (){}, child: Text('view more')),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
