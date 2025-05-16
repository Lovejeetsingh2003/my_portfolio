import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/consts/data.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );
    return Container(
      decoration: BoxDecoration(
        gradient: colorPalette[currentState.knobSelected].gradient,
      ),
      child: Column(
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
                          if (apps[index].screen != null) {
                            currentState.changeScreen(apps[index].screen!);
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
    );
  }
}
