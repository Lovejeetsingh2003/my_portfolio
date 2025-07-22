import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/consts/data.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  final bool isMobile;
  const AppScreen({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: colorPalette[currentState.knobSelected].gradient,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              SizedBox(height: 60),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.start,
                children: [
                  ...List.generate(
                    apps.length,
                    (index) => Container(
                      margin: EdgeInsets.only(
                        right: 10,
                        left: 10,
                        top: 10,
                        bottom: 20,
                      ),
                      child: Column(
                        children: [
                          CustomButton(
                            margin: EdgeInsets.only(bottom: 5),
                            onPressed: () {
                              if (apps[index].screenBuilder != null) {
                                currentState.changeScreen(
                                  apps[index].screenBuilder!(isMobile),
                                  isMobile: isMobile,
                                  context: context,
                                );
                              } else if (apps[index].link != null) {
                                currentState.openLink(apps[index].link!);
                              }
                            },
                            borderRadius:
                                currentState.currentDevice ==
                                        Devices.ios.iPhone13ProMax
                                    ? 8
                                    : 100,
                            width: 60,
                            height: 60,
                            backgroundColor: apps[index].color,
                            child: Center(
                              child:
                                  apps[index].icon != null
                                      ? Icon(
                                        apps[index].icon,
                                        size: 40,
                                        color: Colors.black,
                                      )
                                      : Image.asset(
                                        apps[index].assetPath!,
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                            ),
                          ),
                          SizedBox(
                            width: 80,
                            child: Center(
                              child: Text(
                                apps[index].title,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            child: Row(
              children: [
                Text(
                  "Build Using ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
                Image.asset("assets/icons/flutter.png", width: 25, height: 25),
                Text(
                  " With Too Much ❤️️",
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
