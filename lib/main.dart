import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:jicksaw/Provider/authprovider.dart';
import 'package:jicksaw/Questions/FirstQuestion.dart';
import 'package:jicksaw/Screen/mainpage2.dart';
import 'package:jicksaw/Screen/splashscreen.dart';
import 'package:jicksaw/Widget/const.dart';
import 'package:jicksaw/design.dart';
import 'package:jicksaw/jigsaw.dart';
import 'package:jicksaw/main%20Pages/congratulation.dart';
import 'package:jicksaw/new%20pages/AllPlayers.dart';
import 'package:jicksaw/new%20pages/categories%20&%20age.dart';
import 'package:jicksaw/new%20pages/myurchases.dart';
import 'package:jicksaw/new%20pages/userprofilepage.dart';
import 'package:jicksaw/question.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final puzzleKey = GlobalKey<JigsawWidgetState>();
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => authprovider()),
        ],
        child: GetMaterialApp(
            title: 'Jigsaw',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.orange,
            ),
            home:  SplashScreen()),
      );
    });
  }
}
