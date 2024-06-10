import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  var rightImage = 2;
  var leftImage = 1;

  void changeDice() {
    setState(() {
      leftImage = Random().nextInt(6) + 1;
      rightImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset("images/dice$leftImage.png"),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset("images/dice$rightImage.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
