import 'package:flutter/material.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/screens/home_screen/home_page.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen/app_screen.dart';

void main() {
  runApp(const Portfolio());
}

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final isMobile = screenWidth < 500;

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            isMobile == true ? AppScreen(isMobile: isMobile) : const HomePage(),
      ),
    );
  }
}
