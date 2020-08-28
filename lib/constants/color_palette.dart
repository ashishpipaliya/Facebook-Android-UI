import 'dart:math';
import 'package:flutter/material.dart';

class ColorPalette {
  static const Color scaffoldColor = Color(0xFFF0F2F5);
  static const Color facebookBlue = Color(0xFF1777F2);
  static const Color black = Colors.black;
  static const Color white = Colors.white;

  Color kRandomColor =
      Colors.primaries[Random().nextInt(Colors.primaries.length)][200];

  static const LinearGradient roomGradient = LinearGradient(colors: [
    Color(0XFF496AE1),
    Color(0XFFCE43B1),
  ]);

  static const Color online = Color(0xFF4BCB1F);

  static const LinearGradient storyGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black26]);
}
