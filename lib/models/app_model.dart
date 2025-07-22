import 'package:flutter/widgets.dart';

class AppModel {
  String title;
  String? assetPath;
  String? link;
  IconData? icon;
  Color color;
  final Widget Function(bool)? screenBuilder;

  AppModel({
    required this.title,
    required this.color,
    this.assetPath,
    this.link,
    this.icon,
    this.screenBuilder,
  }) : assert(icon == null || assetPath == null);
}
