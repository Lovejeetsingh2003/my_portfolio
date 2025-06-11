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
    color: const Color.fromARGB(255, 163, 151, 38),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.yellow],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_yellow.svg",
  ),
  ColorModel(
    color: const Color.fromARGB(255, 20, 91, 149),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.blue],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_blue.svg",
  ),
  ColorModel(
    color: const Color.fromARGB(255, 44, 103, 46),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.green],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_green.svg",
  ),
  ColorModel(
    color: const Color.fromARGB(255, 135, 36, 29),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.red],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_red.svg",
  ),
  ColorModel(
    color: const Color.fromARGB(255, 88, 23, 99),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.purple],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_purple.svg",
  ),
  ColorModel(
    color: const Color.fromARGB(255, 129, 16, 54),
    gradient: LinearGradient(
      colors: [Colors.black, Colors.pink],
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ),
    svgPath: "assets/images/cloudy_pink.svg",
  ),
];
