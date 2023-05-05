import 'package:flutter/material.dart';

class Game {
  final Color hiddenCard = Colors.red;
  List<Color>? gameColors;
  List<String>? gameImg;
  List<Color> cards = [
    Colors.green,
    Colors.yellow,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];
  final String hiddenCardpath = "assets/memory/question.png";
  List<String> cards_list = [
    "assets/memory/fox.png",
    "assets/memory/horse.png",
    "assets/memory/monkey.png",
    "assets/memory/fox.png",
    "assets/memory/zoo.png",
    "assets/memory/horse.png",
    "assets/memory/rabbit.png",
    "assets/memory/monkey.png",
    "assets/memory/panda.png",
    "assets/memory/rabbit.png",
    "assets/memory/panda.png",
    "assets/memory/zoo.png",
  ];
  final int cardCount = 12;
  List<Map<int, String>> matchCheck = [];

  //methods
  void initGame() {
    gameColors = List.generate(cardCount, (index) => hiddenCard);
    gameImg = List.generate(cardCount, (index) => hiddenCardpath);
  }
}
