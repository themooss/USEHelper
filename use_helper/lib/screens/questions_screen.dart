import 'package:flutter/material.dart';
import 'package:use_helper/utils/answer.dart';
import 'package:use_helper/utils/question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = const [
      {
        'question': 'What\'s your favourite color?',
        'answer': ['Red', 'Blue', 'Purple', 'White']
      },
      {
        'question': 'What\'s your favourite animal?',
        'answer': ['Cat', 'Dog', 'hamster', 'gorilla']
      },
      {
        'question': 'What\'s your favourite music?',
        'answer': ['Ambient', 'Phonk', 'Dubstep', 'Drum\'n bass']
      }
    ];

    return Scaffold(
        body: Column(children: [
      Question(
        questions[_questionIndex]['question'].toString(),
      ),
      ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
        return Answer(_answerQuestion, answer);
      })
    ]));
  }
}
