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
  var currentIndex = 0;
  // var currentQuestion;
  @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   currentQuestion = question[currentIndex];
  // }

  void onHandleButton() {
    setState(() {
      currentIndex++;
    });
  }

  @override
  Widget build(context) {
    var currentQuestion = question[currentIndex];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          currentQuestion.text,
          style: TextStyle(color: Colors.white, fontSize: 22),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        ...currentQuestion.getShuffledAnswers().map(
          (item) {
            return AnswerButton(onHandleButton, item);
          },
        ),
      ],
    );
  }
}
