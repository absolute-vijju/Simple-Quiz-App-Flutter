import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String result;

    if (resultScore <= 40) {
      result = "You are awesome and innocent.";
    } else if (resultScore <= 60) {
      result = "Pretty likeable";
    } else if (resultScore <= 80) {
      result = "You are ... strange?!";
    } else {
      result = "You are so bad!";
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () => resetQuiz(),
            child: const Text("Restart Quiz!"),
          )
        ],
      ),
    );
  }
}
