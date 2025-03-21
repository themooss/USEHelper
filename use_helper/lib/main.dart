import 'package:flutter/material.dart';
import 'package:use_helper/screens/home_screen.dart';
import 'package:use_helper/screens/questions_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuestionsScreen(),
    );
  }
}
