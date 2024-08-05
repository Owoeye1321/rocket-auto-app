import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rocket_auth/utilities/colors.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> questionSummary;
  QuestionSummary(this.questionSummary, {super.key});
  @override
  Widget build(BuildContext context) {
    print(questionSummary);
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
                      width: 30,
                      padding: EdgeInsets.only(bottom: 10),
                      margin: EdgeInsets.only(right: 25),
                      decoration: BoxDecoration(
                        color: each["status"] == true
                            ? Colors.lightBlue
                            : wrongAnswerColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Text(
                        ((each["question_index"] as int) + 1).toString(),
                        style: GoogleFonts.merriweather(
                          height: 3,
                          fontWeight: FontWeight.bold,
                          //backgroundColor: ,
                        ),
                        textAlign: TextAlign.center,
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
                            style: TextStyle(
                                color: each["status"] == true
                                    ? Colors.lightBlue
                                    : wrongAnswerColor),
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
                    )
                  ],
                );
              },
            ).toList()),
      ),
    );
  }
}
