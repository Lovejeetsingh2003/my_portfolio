import 'package:flutter/material.dart';
import 'package:my_portfolio/providers/current_state.dart' show CurrentState;
import 'package:my_portfolio/screens/home_screen/app_screen.dart';
import 'package:provider/provider.dart';

class TopBar extends StatelessWidget {
  final String title;
  final bool isMobile;

  const TopBar({required this.isMobile, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: true,
    );

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          GestureDetector(
            onTap: () {
              if (isMobile) {
                Navigator.of(context).pop();
              } else {
                currentState.changeScreen(AppScreen());
              }
            },
            child: Icon(Icons.close, color: Colors.black, size: 35),
          ),
        ],
      ),
    );
  }
}
