import 'package:flutter/material.dart';
import 'package:dice_roller/DiceApp.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: const Text(
            "Dice Roller",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
        body: const DiceApp(),
      ),
    ),
  );
}
