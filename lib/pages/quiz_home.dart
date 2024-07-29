import 'package:flutter/material.dart';
import 'package:rocket_auth/pages/quiz_intro_screen.dart';
import 'package:rocket_auth/pages/quiz_screen.dart';
import 'package:rocket_auth/utilities/colors.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});
  @override
  State<Quiz> createState() {
    return QuizeState();
  }
}

class QuizeState extends State<Quiz> {
  //Widget? activeScreen;
  var activeScreen = 'start-screen';

  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   activeScreen = StartScreen(switchScreen);
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = QuestionScreen();
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [rootPink, lightPink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionScreen(),
      ),
    );
  }
}
