import "package:flutter/material.dart";
import "package:rocket_auth/widgets/answer_button.dart";
import 'package:rocket_auth/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  final void Function(String answer) onSelectedAnswer;
  QuestionScreen({super.key, required this.onSelectedAnswer});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentIndex = 0;
  // var currentQuestion;
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   currentQuestion = question[currentIndex];
  // }

  void onHandleButton(String answer) {
    widget.onSelectedAnswer(answer);
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
          style: GoogleFonts.lato(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        ...currentQuestion.getShuffledAnswers().map(
          (item) {
            return AnswerButton(() {
              print("hello wrodld");
              onHandleButton(item);
            }, item);
          },
        ),
      ],
    );
  }
}
