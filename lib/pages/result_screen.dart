import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rocket_auth/data/questions.dart';
import 'package:rocket_auth/widgets/question_summary.dart';
import 'package:rocket_auth/pages/expenses.dart';
import '../utilities/colors.dart';

class ResultScreen extends StatelessWidget {
  final List<String> choosenAnswers;
  final Function() switchScreen;
  ResultScreen(this.choosenAnswers, this.switchScreen, {super.key});
  final int total_question = question.length;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswers.length; i++) {
      summary.add({
        "question_index": i,
        "question": question[i].text,
        "correct_answer": question[i].answers[0],
        "chosen_answer": choosenAnswers[i],
        "status": choosenAnswers[i] == question[i].answers[0] ? true : false
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final totalCorrectAnswer = summaryData.where((each) {
      return each["chosen_answer"] == each["correct_answer"];
    }).length;
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
              "You answered $totalCorrectAnswer out of $total_question questions bla bla bla bla bla bla",
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
            QuestionSummary(summaryData),
            SizedBox(height: 25),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.restart_alt_outlined),
              onPressed: switchScreen,
              label: Text(
                "Restart ",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: Icon(Icons.track_changes_outlined),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Expenses();
                    },
                  ),
                );
              },
              label: Text(
                "Expense Tracker ",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            )
          ],
        ));
  }
}
