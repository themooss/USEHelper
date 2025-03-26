import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Привет!'),
          titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
          centerTitle: true,
          backgroundColor: const Color(0xffD85814),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                height: 39,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD85814),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text(
                    "Вперёд!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                )),
          ]),
        ),
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset("assets/images/image1.png"),
            ),
            //Text portion
            const Text(
              "USEHelper - твой помощник в ЕГЭ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD85814)),
            ),

            const SizedBox(
              height: 23,
            ),

            const Text(
              "Готовься узнать много нового о заданиях ЕГЭ",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ));
  }
}
