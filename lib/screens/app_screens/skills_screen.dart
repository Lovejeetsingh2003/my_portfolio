import 'package:flutter/material.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/models/skill_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/skill_container.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

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
              TopBar(title: "Skills"),
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
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: [
                    ...List.generate(
                      skills.length,
                      (index) => SkillContainer(
                        title: skills[index].title,
                        icon: skills[index].icon,
                        imagePath: skills[index].imagePath,
                      ),
                    ),
                    Divider(height: 2, color: Colors.black),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Languages",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                      languages.length,
                      (index) => SkillContainer(title: languages[index].title),
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
