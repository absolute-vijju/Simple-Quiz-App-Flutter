import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 20},
        {"text": "Green", "score": 30},
        {"text": "White", "score": 40},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Rabbit", "score": 10},
        {"text": "Snake", "score": 20},
        {"text": "Elephant", "score": 30},
        {"text": "Lion", "score": 40}
      ]
    },
    {
      "questionText": "What's your favourite instructor?",
      "answers": [
        {"text": "Max", "score": 10},
        {"text": "Max", "score": 10},
        {"text": "Max", "score": 10},
        {"text": "Max", "score": 10}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    print(_totalScore);
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Math Quiz"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
