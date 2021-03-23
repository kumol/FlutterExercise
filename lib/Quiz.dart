import 'package:flutter/material.dart';
import 'package:mdmp/Answer.dart';
import 'package:mdmp/Question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerCounter;
  Quiz({this.questions, this.questionIndex, this.answerCounter});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerCounter(answer["score"]), answer[Text]);
        }).toList()
        // ...(questions[questionIndex]['answers'] as List).map((answer) {
        //   return Answer(answerHandler, answer);
        // }),
      ],
    );
  }
}
