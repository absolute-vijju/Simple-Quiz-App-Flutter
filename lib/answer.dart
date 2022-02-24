import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function onAnswerSelected;
  final String answerText;

  Answer(this.onAnswerSelected, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.blue,
          ),
        ),
        onPressed: () => onAnswerSelected(),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}
