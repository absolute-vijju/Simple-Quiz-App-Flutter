import 'package:first_app/answer.dart';
import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Question(
          questions[questionIndex]["questionText"].toString(),
        ),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map(
          (answer) => Answer(
            () => answerQuestion(answer["score"]),
            answer["text"].toString(),
          ),
        )
      ]),
    );
  }
}
