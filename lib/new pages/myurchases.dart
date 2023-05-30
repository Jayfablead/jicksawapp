import 'package:flutter/material.dart';
import 'package:jicksaw/drawer.dart';
import 'package:sizer/sizer.dart';

import '../const widget.dart';

class MyPurchases extends StatefulWidget {
  const MyPurchases({Key? key}) : super(key: key);

  @override
  State<MyPurchases> createState() => _MyPurchasesState();
}

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
          padding:  EdgeInsets.symmetric(horizontal: 3.w),
          child: Column(
            children: [
              SizedBox(height: 2.h,),
              Row(
                children: [
                  Text(
                    'My Subscription : ',
                    style: TextStyle(color: primary, fontSize: 14.sp),
                  ),
                ],
              ),
              Text('',style: TextStyle(color: Colors.black),),
            ],
          ),
        ),
      ),
    );
  }
}
