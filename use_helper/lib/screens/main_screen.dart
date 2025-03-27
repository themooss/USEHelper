import 'package:flutter/material.dart';
import 'package:use_helper/screens/main/featured_screen.dart';
import 'package:use_helper/screens/main/home_screen.dart';
import 'package:use_helper/screens/main/menu_screen.dart';
import 'package:use_helper/screens/main/study_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavigatorBottomWidget(),
    );
  }
}

final List<Widget> _navigationPages = [
  const HomeScreen(),
  const FeaturedScreen(),
  const StudyScreen(),
  const MenuScreen(),
];

final List<String> _navigationPagesAppBarLocalise = [
  "Главная",
  "Избранное",
  "Изучение",
  "Меню",
];

class NavigatorBottomWidget extends StatefulWidget {
  const NavigatorBottomWidget({super.key});

  @override
  State<NavigatorBottomWidget> createState() => _NavigatorBottomWidgetState();
}

class _NavigatorBottomWidgetState extends State<NavigatorBottomWidget> {
  int _itemSelected = 0;
  String _currentItem = '';

  void _bottomBarNavigation(int index) {
    setState(() {
      _itemSelected = index;
      _currentItem = _navigationPagesAppBarLocalise[_itemSelected];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffffafa),
      appBar: AppBar(
        title: Text(_currentItem),
        titleTextStyle: TextStyle(fontSize: 20, color: Colors.white),
        centerTitle: true,
        backgroundColor: const Color(0xfff7022a),
      ),
      body: _navigationPages[_itemSelected],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _itemSelected,
          onTap: _bottomBarNavigation,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xfff7022a),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Главная'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark), label: "Избранное"),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_book_rounded), label: "Изучение"),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_rounded), label: "Меню")
          ]),
    );
  }
}
