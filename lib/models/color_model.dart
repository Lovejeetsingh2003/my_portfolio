import 'dart:ui';

import 'package:flutter/material.dart';

class ColorModel {
  String svgPath;
  Gradient gradient;
  Color color;

  ColorModel({
    required this.svgPath,
    required this.gradient,
    required this.color,
  });
}

List<ColorModel> colorPalette = [
  ColorModel(
    color: Colors.yellow,
    gradient: LinearGradient(
      colors: [const Color.fromARGB(255, 88, 88, 88), Colors.yellow],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_yellow.svg",
  ),
  ColorModel(
    color: Colors.blue,
    gradient: LinearGradient(
      colors: [Colors.white, Colors.blue],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_blue.svg",
  ),
  ColorModel(
    color: Colors.green,
    gradient: LinearGradient(
      colors: [Colors.white, Colors.green],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_green.svg",
  ),
  ColorModel(
    color: Colors.red,
    gradient: LinearGradient(
      colors: [Colors.white, Colors.red],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_red.svg",
  ),
  ColorModel(
    color: Colors.purple,
    gradient: LinearGradient(
      colors: [Colors.white, Colors.purple],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_purple.svg",
  ),
  ColorModel(
    color: Colors.pink,
    gradient: LinearGradient(
      colors: [Colors.white, Colors.pink],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_pink.svg",
  ),
];
