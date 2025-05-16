import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/screens/home_screen/app_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone13ProMax;
  int knobSelected = 1;
  Widget currentScreen = AppScreen();
  String quote = '"Everything you can imagine is real."';
  String quoteAUthor = "― Pablo Picasso";

  void changeScreen(Widget screen) {
    currentScreen = screen;
    notifyListeners();
  }

  Future<void> openLink(String link) async {
    Uri url = Uri.parse(link);
    try {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } catch (e) {
      print("Error appeared while open this link : $e");
    }
  }

  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }

  void changeGradient(int index) {
    knobSelected = index;
    notifyListeners();
  }
}
