import 'package:flutter/material.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/screens/home_screen/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}


// if the width of browser screen is greater than or equals to 1015 than we show all three devices
// if the portfolio is open in phone than we need to show the different ui . (get more info from pawan.app)