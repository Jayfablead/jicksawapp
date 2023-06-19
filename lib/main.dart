import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jicksaw/Provider/authprovider.dart';

import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Screen/splashscreen.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/challanges%20pages/Trivia.dart';
import 'package:jicksaw/challanges%20pages/memory/home.dart';
import 'package:jicksaw/main%20Pages/categotirs%20page.dart';

import 'package:jicksaw/main%20Pages/congratulation.dart';

import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'challanges pages/math/homepage.dart';
import 'challanges pages/slider/Board.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => authprovider()),
        ],
        child: GetMaterialApp(
          title: 'Jigsaw',
          debugShowCheckedModeBanner: false,
          builder: EasyLoading.init(),
          getPages: [
            GetPage(name: '/', page: () => Categ()),
            GetPage(name: '/MemoryChallenge', page: () => MemoryChallenge()),
            GetPage(name: '/MathtPage', page: () => MathtPage()),
          ],
          theme: ThemeData(
            primarySwatch: Colors.orange,
          ),
        ),
      );
    });
  }
}
