import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/models/app_model.dart';
import 'package:my_portfolio/models/device_models.dart';
import 'package:my_portfolio/screens/app_screens/about_screen.dart';
import 'package:my_portfolio/screens/app_screens/education_screen.dart';
import 'package:my_portfolio/screens/app_screens/project_screen.dart';
import 'package:my_portfolio/screens/app_screens/skills_screen.dart';

List<DeviceModels> devices = [
  DeviceModels(data: Icons.android, device: Devices.android.onePlus8Pro),
  DeviceModels(data: Icons.apple, device: Devices.ios.iPhone13ProMax),
];

List<AppModel> apps = [
  AppModel(
    title: "About",
    color: Colors.white,
    icon: Icons.info_outline,
    screenBuilder: (isMobile) => AboutScreen(isMobile: isMobile),
  ),
  AppModel(
    title: "Skills",
    color: Colors.white,
    icon: Icons.ac_unit_outlined,
    screenBuilder: (isMobile) => SkillsScreen(isMobile: isMobile),
  ),
  AppModel(
    title: "Project",
    color: Colors.white,
    icon: Icons.work,
    screenBuilder: (isMobile) => ProjectScreen(isMobile: isMobile),
  ),
  AppModel(
    title: "Education",
    screenBuilder: (isMobile) => EducationScreen(isMobile: isMobile),
    color: Colors.white,
    icon: Icons.school,
  ),
  AppModel(
    title: "Linkedin",
    color: Color(0xff0078b5),
    assetPath: "assets/icons/linkedin.png",
    link: "https://linkedin.com/in/lovejeet-singh-3ba160279",
  ),

  AppModel(
    title: "Github",
    color: Color(0xff000000),
    assetPath: "assets/icons/github.png",
    link: "https://github.com/Lovejeetsingh2003",
  ),
  AppModel(
    title: "Resume",
    color: Colors.white,
    assetPath: "assets/icons/resume.png",
    link:
        "https://drive.google.com/drive/folders/1xc6XnfXbysIuGJbBt2wcI-gr9mMagK-z?usp=sharing",
  ),
];
