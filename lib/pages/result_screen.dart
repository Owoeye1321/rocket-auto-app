import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rocket_auth/data/questions.dart';
import 'package:rocket_auth/main.dart';
import 'package:rocket_auth/models/quiz_model.dart';
import 'package:rocket_auth/pages/quiz_home.dart';
import 'package:rocket_auth/widgets/question_summary.dart';

import '../utilities/colors.dart';

class ResultScreen extends StatelessWidget {
  final List<String> choosenAnswers;
  const ResultScreen(this.choosenAnswers, {super.key});

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    QuizQuestions currentItem;
    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": question[i],
        "correct_answer": question[i].answers[0],
        "chosen_answer": choosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [rootPink, lightPink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
        ),
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "You answered X out of Y questions bla bla bla bla bla bla",
              style: GoogleFonts.gupter(
                color: Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            QuestionSummary(getSummary()),
            SizedBox(height: 25),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.arrow_right_alt),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) {
                //     return Quiz();
                //   }),
                // );
              },
              label: Text(
                "Restart ",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ));
  }
}
