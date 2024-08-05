import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rocket_auth/utilities/colors.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> questionSummary;
  QuestionSummary(this.questionSummary, {super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: questionSummary.map(
              (each) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 28,
                      height: 30,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(right: 10, bottom: 30),
                      padding: EdgeInsets.only(bottom: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 1),
                        color: each["status"] == true
                            ? Colors.lightBlue
                            : wrongAnswerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(60),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          ((each["question_index"] as int) + 1).toString(),
                          style: GoogleFonts.merriweather(
                            textStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            (each["question"]).toString(),
                            textAlign: TextAlign.left,
                            style:
                                GoogleFonts.merriweather(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            (each["correct_answer"]).toString(),
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                          Text(
                            (each["chosen_answer"]).toString(),
                            style: TextStyle(
                                color: each["status"] == true
                                    ? Colors.lightBlue
                                    : wrongAnswerColor),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 10)
                  ],
                );
              },
            ).toList()),
      ),
    );
  }
}
