import "package:flutter/material.dart";
import "package:rocket_auth/widgets/answer_button.dart";
import 'package:rocket_auth/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var curentQuestion = question[currentIndex];
  }

  void onHandleButton() {}
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Questions here ....",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(height: 30),
        AnswerButton(onHandleButton, "Question One"),
        AnswerButton(onHandleButton, "Question Two"),
        AnswerButton(onHandleButton, "Question Three"),
        AnswerButton(onHandleButton, "Question Four")
      ],
    );
  }
}
