import 'package:flutter/material.dart';

import '../main.dart';
import '../page/about_page.dart';
import '../page/first_page.dart';
import '../page/fourth_page.dart';
import '../page/second_page.dart';
import '../page/third_page.dart';

class MyStatefulWidgetState {
  BuildContext context;
  String title;
  Widget body;
  int index;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  MyStatefulWidgetState(
      {required this.context,
      required this.title,
      required this.body,
      required this.index});

  void getBody(index) {
    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Home Page"),
        ));
        break;
      case 1:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const FirstPage(),
        ));
        break;
      case 2:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const SecondPage(),
        ));
        break;
      case 3:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const AboutPage(),
        ));
        break;
      // case 3:
      //   Navigator.of(context).push(MaterialPageRoute(
      //     builder: (context) => const ThirdPage(),
      //   ));
      //   break;
      //   case 4:
      //     Navigator.of(context).pushReplacement(MaterialPageRoute(
      //       builder: (context) => const FourthPage(),
      //     ));
      //     break;
      default:
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Home Page"),
        ));
        break;
    }
  }

  void _onItemTapped(int index) {
    getBody(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body,
      appBar: AppBar(title: Text(title)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Articles',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.code),
            label: 'Our projects',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About Us',
          ),
        ],
        currentIndex: index,
        selectedItemColor: const Color.fromRGBO(53, 195, 145, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
