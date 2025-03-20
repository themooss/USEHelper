import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectionHandler;
  final String answerText;

  // ignore: use_key_in_widget_constructors
  const Answer(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue.shade300,
      padding: EdgeInsets.all(10),
      child:
          ElevatedButton(onPressed: selectionHandler, child: Text(answerText)),
    );
  }
}
