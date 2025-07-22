import 'package:flutter/material.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/models/education_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class EducationScreen extends StatelessWidget {
  final bool isMobile;

  const EducationScreen({this.isMobile = false, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Column(
            children: [
              TopBar(title: "Education", isMobile: isMobile),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 20,
                ),
                width: size.width,
                decoration: BoxDecoration(
                  gradient: colorPalette[currentState.knobSelected].gradient,
                  border: Border.all(
                    width: 3,
                    color: colorPalette[currentState.knobSelected].color,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.school, size: 80, color: Colors.black),
                    ...List.generate(
                      education.length,
                      (index) => Container(
                        margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xfffffcf2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: education[index].color,
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education[index].degree,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  education[index].school,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      education[index].from,
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      " - ${education[index].to}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    Text(
                                      " | ${education[index].address}",
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),

                                education[index].description != null
                                    ? Column(
                                      children: [
                                        SizedBox(height: 20),
                                        Text(
                                          education[index].description!,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
                                    )
                                    : Container(),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
