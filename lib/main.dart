import 'package:flutter/material.dart';
import 'package:rocket_auth/pages/splash.dart';
import 'package:rocket_auth/utilities/colors.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rocket App',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark().copyWith(colorScheme: kDarkColorScheme),
      theme: ThemeData(
              )
          .copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        cardTheme: CardTheme().copyWith(
          color: kColorScheme.background,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: kColorScheme.primary,
          ),
        ),
      ),
      //themeMode: ThemeMode.system, //default mode activated
      home: const Splash(),
    );
  }
}
