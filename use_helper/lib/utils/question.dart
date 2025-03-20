import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // ignore: use_key_in_widget_constructors
  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
        color: Colors.grey.shade500,
        fontSize: 25,
      ),
      textAlign: TextAlign.center,
    );
  }
}
