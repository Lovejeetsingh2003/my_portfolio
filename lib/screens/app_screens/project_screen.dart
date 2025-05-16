import 'package:flutter/material.dart';
import 'package:my_portfolio/models/color_model.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/widgets/top_bar.dart';
import 'package:provider/provider.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

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
              TopBar(title: "Projects"),
              SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(20),
                width: size.width,
                decoration: BoxDecoration(
                  gradient: colorPalette[currentState.knobSelected].gradient,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
