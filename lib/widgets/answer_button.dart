import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final void Function() onHandleButton;
  final String buttonText;
  AnswerButton(this.onHandleButton, this.buttonText, {super.key});

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: onHandleButton,
        child: Text(
          "Answer one",
          style: TextStyle(fontSize: 15),
        ),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.fromLTRB(20, 4, 20, 4),
          minimumSize: Size(230, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        ),
      ),
    );
  }
}
