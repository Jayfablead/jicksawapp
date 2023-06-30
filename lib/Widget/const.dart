import 'package:connectivity/connectivity.dart';
import 'package:jicksaw/Modal/CAtegoryModal.dart';
import 'package:jicksaw/Modal/UserModal.dart';
import 'package:jicksaw/Modal/addcardModal.dart';
import 'package:jicksaw/Modal/allpurchasedCharactersModal.dart';
import 'package:jicksaw/Modal/allpurchasedGmaesMoal.dart';
import 'package:jicksaw/Modal/allpurchasedModal.dart';
import 'package:jicksaw/Modal/allpurchasedpointsModal.dart';
import 'package:jicksaw/Modal/categryModal.dart';
import 'package:jicksaw/Modal/changepwModal.dart';
import 'package:jicksaw/Modal/characterModal.dart';
import 'package:jicksaw/Modal/characterinfoModal.dart';
import 'package:jicksaw/Modal/editmodal.dart';
import 'package:jicksaw/Modal/gameModal.dart';
import 'package:jicksaw/Modal/gameinfoModal.dart';
import 'package:jicksaw/Modal/gamesModal.dart';
import 'package:jicksaw/Modal/memorymodal.dart';
import 'package:jicksaw/Modal/playermodal.dart';
import 'package:jicksaw/Modal/pointshopModal.dart';
import 'package:jicksaw/Modal/questionsmodal.dart';
import 'package:jicksaw/Modal/shopinfoModal.dart';
import 'package:jicksaw/Modal/shopitemmodal.dart';
import 'package:jicksaw/Modal/shoppurModal.dart';
import 'package:jicksaw/Modal/shoptransactionModal.dart';
import 'package:jicksaw/Modal/startModal.dart';
import 'package:jicksaw/Modal/subsModal.dart';
import 'package:jicksaw/Modal/subscancleModal.dart';
import 'package:jicksaw/Modal/subsdataModal.dart';
import 'package:jicksaw/Modal/transactionModal.dart';
import 'package:jicksaw/Modal/viewcard.dart';
import 'package:jicksaw/Provider/ProfileviewModal.dart';

import '../Modal/challenegeModal.dart';

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
editModal? edit;
shopitemModal? shop;
shopinfoModal? shopitem;
AllplayersModal? players;
addcardModal? addcard;
viewcardModal? viewcard;
subscribeModal? subs;
TransactionModal? trans;
subsdataModal? allsubs;
SubscancleModal? subcancle;
changepwModal? changepw;
shoppayModal? payshop;
shoptransactionModal? shoptransaction;
allpurchasedModal? allpurs;
challModal? chalns;
memoryModal? memory;
startModal? start;
categModal? categories;
allgamesshopModal? games;
allcharactershopModal? chars;
pointshopModal? points;
gameinfoModal? gameinfo;
characterinfoModal? characterinfo;
allpurchasedGamesModal? purgames;
allpurchasedCharactersModal? purcharcs;
allpurchasedPointsModal? purpoints;