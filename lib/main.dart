import 'package:flutter/material.dart';
import 'package:rocket_auth/pages/splash.dart';
import 'package:rocket_auth/utilities/colors.dart';

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
      theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              //useMaterial3: true,
              // primarySwatch: Colors.pink,
              )
          .copyWith(
        useMaterial3: true,
        colorScheme: kColorScheme,
        cardTheme: CardTheme().copyWith(
            color: kColorScheme.onSecondary,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: rootPink,
          ),
        ),
      ),
      home: const Splash(),
    );
  }
}
