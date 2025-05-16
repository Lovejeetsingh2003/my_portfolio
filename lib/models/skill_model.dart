import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillModel {
  String title;
  String? imagePath;
  IconData? icon;

  SkillModel({required this.title, this.icon, this.imagePath});
}

List<SkillModel> skills = [
  SkillModel(title: "Flutter", imagePath: "assets/icons/flutter.png"),
  SkillModel(title: "Firebase", imagePath: "assets/icons/firebase.png"),
  SkillModel(title: "Github", imagePath: "assets/icons/github.png"),
  SkillModel(title: "VsCode", imagePath: "assets/icons/vs_code.png"),
  SkillModel(title: "Android Studio", icon: Icons.android),
  SkillModel(title: "Dart", icon: Icons.flutter_dash),
  SkillModel(title: "REST Api"),
  SkillModel(title: "MongoDB", imagePath: "assets/icons/mongo_db.png"),
  SkillModel(title: "Postman", imagePath: "assets/icons/postman.png"),
  SkillModel(title: "Figma", imagePath: "assets/icons/figma.png"),
];

List<SkillModel> languages = [
  SkillModel(title: "Punjabi"),
  SkillModel(title: "Hindi"),
  SkillModel(title: "English"),
];
