import 'package:flutter/material.dart';
import 'package:use_helper/utils/study_widget.dart';

class StudyScreen extends StatelessWidget {
  const StudyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          const StudyWidget(
            imageLink: "assets/images/studyImages/laptopImage.png",
            titleText: "Информатика",
            additionalText: "Компьютеры, хацкерские штучки и всё такое",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/mathImage.png",
            titleText: "Математика",
            additionalText:
                "Графики, теоремы, уравнения и другие вещи, от которых хочется плакать",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/russianImage.png",
            titleText: "Русский язык",
            additionalText:
                "Синтаксис, орфография, ударения и другие нормы употребления нашего языка",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/englishImage.png",
            titleText: "Английский язык",
            additionalText:
                "Синтаксис, времена, грамматические и речевые нормы международного языка",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/physicsImage.png",
            titleText: "Физика",
            additionalText:
                "Законы, формулы, другими словами - обьяснения фокусов природы :3",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/chemistryImage.png",
            titleText: "Химия",
            additionalText:
                "Всё о превращениях, свойствах веществ и о многих других мало понятных кому вещах",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/biologyImage.png",
            titleText: "Биология",
            additionalText:
                "Цветочки, организмы, бананчики и другие чудеса матушки природы",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/geographyImage.png",
            titleText: "География",
            additionalText:
                "Всё о территориях, хозяйствах Человечества, населении и прочее",
          ),
          const StudyWidget(
            imageLink: "assets/images/studyImages/socialScienceImage.png",
            titleText: "Обществознание",
            additionalText: "Экономика, право и политика - ваш конёк",
          ),
        ],
      ),
    );
  }
}
