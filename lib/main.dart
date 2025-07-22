import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_portfolio/providers/current_state.dart';
import 'package:my_portfolio/screens/home_screen/home_page.dart';
import 'package:provider/provider.dart';
import 'screens/home_screen/app_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const Portfolio());
}

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final isMobile = screenWidth < 500;

    @override
    void initState() {
      super.initState();
      SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    }

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => CurrentState())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: isMobile == true ? AppScreen(isMobile: isMobile) : HomePage(),
      ),
    );
  }
}
