import 'package:rocket_auth/data/questions.dart';

class QuizQuestions {
  final String text;
  final List<String> answers;
  const QuizQuestions(this.text, this.answers);

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); //This create a copy of the list
    shuffledList.shuffle(); //This actually shuffle the list
    return shuffledList;
  }
}
