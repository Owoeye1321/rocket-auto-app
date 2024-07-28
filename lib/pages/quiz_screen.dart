import "package:flutter/material.dart";

class QuestionScreen extends StatefulWidget {
  QuestionScreen({super.key});
  @override
  State<QuestionScreen> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionScreen> {
  @override
  Widget build(context) {
    return Text("Hello world");
  }
}
