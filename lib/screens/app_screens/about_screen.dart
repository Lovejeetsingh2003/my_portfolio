import 'package:flutter/material.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

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
              TopBar(title: "About Me"),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                width: size.width,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: colorPalette[currentState.knobSelected].color,
                  ),
                  gradient: colorPalette[currentState.knobSelected].gradient,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundColor: Colors.white,
                      child: Image.asset("assets/icons/profile_pic.png"),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hi, I am Lovejeet Singh!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Flutter and Android Developer with Hands on experience in building mobile applications. Certified in both Flutter and Android Development, with a proven track record of delivering high-quality projects. Proficient in Dart and Kotlin mobile development frameworks. Currently pursuing a B.Tech Degree in Computer Science and Engineering (8th Semester) at Dav University, Jalandhar and actively enhancing my technical expertise through real world projects and collaborations. ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
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
