import 'package:flutter/widgets.dart';

class AppModel {
  String title;
  String? assetPath;
  String? link;
  IconData? icon;
  Color color;
  Widget? screen;

  AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    this.link,
    this.icon,
    this.screen,
  }) : assert(icon == null || assetPath == null);
}
