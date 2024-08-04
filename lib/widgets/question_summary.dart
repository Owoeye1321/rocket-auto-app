import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> questionSummary;
  QuestionSummary(this.questionSummary, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: questionSummary.map(
          (each) {
            return Row(
              children: [
                Text(
                  ((each["question_index"] as int) + 1).toString(),
                  style: GoogleFonts.merriweather(
                    height: 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        (each["question"]).toString(),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        (each["correct_answer"]).toString(),
                      ),
                      Text(
                        (each["chosen_answer"]).toString(),
                      )
                    ],
                  ),
                )
              ],
            );
          },
        ).toList());
  }
}
