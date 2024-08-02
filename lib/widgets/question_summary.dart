import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> questionSummary;
  QuestionSummary(this.questionSummary, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...questionSummary.map((each) {
          return Container(
            height: 50,
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.all(10),
            //color: Colors.green,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text("hello world"),
          );
        })
      ],
    );
  }
}
