import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/quiz_image.png",
          width: 300,
          //color: Color.fromARGB(100, 255, 255, 255),
        ),
        SizedBox(height: 20),
        Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
              color: Color.fromARGB(255, 210, 206, 206), fontSize: 23),
        ),
        SizedBox(height: 25),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
          ),
          icon: Icon(Icons.arrow_right_alt),
          onPressed: startQuiz,
          label: Text(
            "Take Quiz",
            style: TextStyle(color: Colors.white, fontSize: 14),
          ),
        )
      ],
    );
  }
}
