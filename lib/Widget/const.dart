

import 'package:connectivity/connectivity.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Modal/questionsmodal.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';

Future<bool> checkInternet() async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.mobile) {
    return true;
  } else if (connectivityResult == ConnectivityResult.wifi) {
    return true;
  }
  return false;
}


const String baseUrl = 'https://jigsaw.fableadtechnolabs.com/api/ajax.php';
UserModal? usermodal;
ProfileviewModal? profileviewmodal;
QuestionsModal? questions;
CatModal? category;
gameModal? gamedata;

