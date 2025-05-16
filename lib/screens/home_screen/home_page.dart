import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_portfolio/consts/data.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/frosted_container.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );
    return Scaffold(
      body: Stack(
        children: [
          Selector<CurrentState, int>(
            selector: (context, provder) => provder.knobSelected,
            builder: (context, _, __) {
              return Container(
                decoration: BoxDecoration(
                  gradient: colorPalette[currentState.knobSelected].gradient,
                ),
              );
            },
          ),
          Selector<CurrentState, int>(
            selector: (context, provder) => provder.knobSelected,
            builder: (context, _, __) {
              return SvgPicture.asset(
                colorPalette[currentState.knobSelected].svgPath,
                height: size.height,
                fit: BoxFit.cover,
              );
            },
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      FrostedContainer(
                        height: size.height / 2.4,
                        width: size.width / 3.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/my_sticker.png",
                              height: size.height / 3,
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Hi, I am Lovejeet Singh!",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      FrostedContainer(
                        height: size.height / 4.5,
                        width: size.width / 3.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                print("width ${size.width}");
                                currentState.openLink(
                                  "https://linkedin.com/in/lovejeet-singh-3ba160279",
                                );
                              },
                              child: Image.asset(
                                "assets/icons/linkedin.png",
                                height: size.height / 10,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                "Let's Connect",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height / 1.2,
                    child: Consumer<CurrentState>(
                      builder: (context, _, __) {
                        return DeviceFrame(
                          device: currentState.currentDevice,
                          screen: currentState.currentScreen,
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      FrostedContainer(
                        height: size.height / 2.4,
                        width: size.width / 3.5,
                        child: Center(
                          child: Wrap(
                            children: [
                              ...List.generate(
                                colorPalette.length,
                                (index) => Consumer<CurrentState>(
                                  builder: (context, _, __) {
                                    return CustomButton(
                                      margin: const EdgeInsets.all(10),
                                      onPressed: () {
                                        currentState.changeGradient(index);
                                      },
                                      pressed:
                                          currentState.knobSelected == index
                                              ? Pressed.pressed
                                              : Pressed.notPressed,
                                      animate: true,
                                      isThreeD: true,
                                      borderRadius: 100,
                                      height: 52,
                                      width: 52,
                                      shadowColor: Colors.white,
                                      backgroundColor:
                                          colorPalette[index].color,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      FrostedContainer(
                        height: size.height / 4.5,
                        width: size.width / 3.5,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                currentState.quote,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 10),
                              Text(
                                currentState.quoteAUthor,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ...List.generate(
                    devices.length,
                    (index) => Selector<CurrentState, DeviceInfo>(
                      selector: (context, provider) => provider.currentDevice,
                      builder: (context, _, __) {
                        return CustomButton(
                          height: 30,
                          width: 30,
                          borderRadius: 100,
                          backgroundColor: Colors.black,
                          pressed:
                              currentState.currentDevice ==
                                      devices[index].device
                                  ? Pressed.pressed
                                  : Pressed.notPressed,
                          onPressed: () {
                            currentState.changeSelectedDevice(
                              devices[index].device,
                            );
                          },
                          animate: true,
                          isThreeD: true,
                          shadowColor: Colors.white,
                          child: Center(
                            child: Icon(
                              devices[index].data,
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
