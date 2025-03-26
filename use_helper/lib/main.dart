import 'package:flutter/material.dart';
import 'package:use_helper/screens/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Bitter",
          colorScheme:
              ColorScheme.fromSeed(seedColor: Colors.deepOrange.shade400)),
      home: StartScreen(),
    );
  }
}
