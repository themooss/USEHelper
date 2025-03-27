import 'package:flutter/material.dart';
import 'package:use_helper/utils/study_widget.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        StudyWidget(
          imageLink: "assets/images/studyImages/laptopImage.png",
          titleText: "Информатика",
          additionalText: "Компьютеры, хацкерские штучки и всё такое",
        ),
        StudyWidget(
          imageLink: "assets/images/studyImages/mathImage.png",
          titleText: "Математика",
          additionalText:
              "Графики, теоремы, уравнения и другие вещи, от которых хочется плакать",
        ),
      ],
    );
  }
}
