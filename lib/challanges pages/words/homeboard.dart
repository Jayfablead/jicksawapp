import 'package:flutter/material.dart';

import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:get/get.dart';
import 'package:jicksaw/challanges%20pages/words/widgets/keyboard.dart';
import 'package:sizer/sizer.dart';


import '../../Widget/const widget.dart';
import 'data/word_list.dart';
import 'models/letter_model.dart';
import 'models/word_model.dart';
import 'widgets/board.dart';

enum GameStatus { playing, submitting, lost, won }

class WordleScreen extends StatefulWidget {
  const WordleScreen({Key? key}) : super(key: key);
  @override
  _WordleScreenState createState() => _WordleScreenState();
}

class _WordleScreenState extends State<WordleScreen> {
  GameStatus _gameStatus = GameStatus.playing;

  final List<Word> _board = List.generate(
      6, (_) => Word(letters: List.generate(5, (_) => Letter.empty())));

  final List<List<GlobalKey<FlipCardState>>> _flipCardKeys = List.generate(
    6,
        (_) => List.generate(5, (_) => GlobalKey<FlipCardState>()),
  );

  int _currentWordIndex = 0;

  Word? get _currentWord =>
      _currentWordIndex < _board.length ? _board[_currentWordIndex] : null;

  Word _solution = Word.fromString(
    fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase(),
  );

  final Set<Letter> _keyboardLetters = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:
    bgcolor
    //   Colors.black
      ,

      body: Padding(
        padding: EdgeInsets.only(top: 3.h,bottom: 2.5.h,left: 3.w,right: 3.w),
        child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [
                IconButton(
                    onPressed: () {
Get.back();
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: primary,
                    )),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  'Word Challange',
                  style: primarytxt1,
                ),
              ],
            ),
            Board(board: _board, flipCardKeys: _flipCardKeys),
            SizedBox(
              height: 9.h,
            ),
            Keyboard(
              onDeleteTapped: _onDeleteTapped,
              onEnterTapped: _onEnterTapped,
              onKeyTapped: _onKeyTapped,
              letters: _keyboardLetters,
            )
          ],
        ),
      ),
    );
  }

  void _onKeyTapped(String val) {
    if (_gameStatus == GameStatus.playing) {
      setState(() => _currentWord?.addLetter(val));
    }
  }

  void _onDeleteTapped() {
    if (_gameStatus == GameStatus.playing) {
      setState(() {
        _currentWord?.removeLetter();
      });
    }
  }

  Future<void> _onEnterTapped() async {
    if (_gameStatus == GameStatus.playing &&
        _currentWord != null &&
        !_currentWord!.letters.contains(Letter.empty())) {
      _gameStatus = GameStatus.submitting;

      for (var i = 0; i < _currentWord!.letters.length; i++) {
        final currentWordLetter = _currentWord!.letters[i];
        final currentSolutionLetter = _solution.letters[i];

        setState(() {
          if (currentWordLetter == currentSolutionLetter) {
            _currentWord!.letters[i] =
                currentSolutionLetter.copyWith(status: LetterStatus.correct);
          } else if (_solution.letters.contains(currentWordLetter)) {
            _currentWord!.letters[i] =
                currentWordLetter.copyWith(status: LetterStatus.inWord);
          } else {
            _currentWord!.letters[i] =
                currentWordLetter.copyWith(status: LetterStatus.notInWord);
          }
        });

        final letter = _keyboardLetters.firstWhere(
              (element) => element.val == currentWordLetter.val,
          orElse: () => Letter.empty(),
        );
        if (letter.status != LetterStatus.correct) {
          _keyboardLetters.removeWhere((e) => e.val == currentWordLetter.val);
          _keyboardLetters.add(_currentWord!.letters[i]);
        }

        await Future.delayed(
            const Duration(microseconds: 150),
                () =>
                _flipCardKeys[_currentWordIndex][i].currentState?.toggleCard());
      }

      _checkIfWinOrLoss();
    }
  }

  void _checkIfWinOrLoss() {
    if (_currentWord!.wordString == _solution.wordString) {
      _gameStatus = GameStatus.won;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.none,
        duration: const Duration(days: 1),
        backgroundColor: cCorrect,
        content: const Text(
          'You Won!',
          style: TextStyle(color: Colors.white),
        ),
        action: SnackBarAction(
          onPressed: _restart,
          textColor: Colors.white,
          label: 'New Game',
        ),
      ));
    } else if (_currentWordIndex + 1 >= _board.length) {
      _gameStatus = GameStatus.lost;
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        dismissDirection: DismissDirection.none,
        duration: const Duration(days: 1),
        backgroundColor: cCorrect,
        content: Text(
          'You Lost! Solution: ${_solution.wordString}',
          style: const TextStyle(color: Colors.white),
        ),
        action: SnackBarAction(
          onPressed: _restart,
          textColor: Colors.white,
          label: 'New Game',
        ),
      ));
    } else {
      _gameStatus = GameStatus.playing;
    }
    _currentWordIndex += 1;
  }

  void _restart() {
    setState(() {
      _gameStatus = GameStatus.playing;
      _currentWordIndex = 0;
      _board
        ..clear()
        ..addAll(List.generate(6,
                (index) => Word(letters: List.generate(5, (_) => Letter.empty()))));
      _solution = Word.fromString(
        fiveLetterWords[Random().nextInt(fiveLetterWords.length)].toUpperCase(),
      );
      _flipCardKeys
        ..clear()
        ..addAll(List.generate(
            6, (_) => List.generate(5, (_) => GlobalKey<FlipCardState>())));
      _keyboardLetters.clear();
    });
  }
}
