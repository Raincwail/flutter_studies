import 'package:flutter/material.dart';
import 'package:flutter_studies/main.dart';
import 'package:flutter_studies/page/first_page.dart';
import 'package:flutter_studies/page/third_page.dart';

import '../page/about_page.dart';
import '../page/fourth_page.dart';
import '../page/second_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 0);

  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, {width = 200}) {
    return Drawer(
        child: SizedBox(
            width: width,
            child: Material(
                color: const Color.fromRGBO(36, 36, 36, 1),
                child: ListView(children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(30, 30, 30, 1),
                    ),
                    height: 60.0,
                    child: const DrawerHeader(
                        child: Text("Bonk Team Inc.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(53, 195, 145, 1)))),
                  ),
                  buildMenuItem(
                      text: "Home Page",
                      onClicked: () => selectedItem(context, 0)),
                  buildMenuItem(
                      text: "About",
                      onClicked: () => selectedItem(context, -1)),
                  buildMenuItem(
                      text: "First Page",
                      onClicked: () => selectedItem(context, 1)),
                  buildMenuItem(
                      text: "Second Page",
                      onClicked: () => selectedItem(context, 2)),
                  buildMenuItem(
                      text: "Third Page",
                      onClicked: () => selectedItem(context, 3)),
                  buildMenuItem(
                      text: "Forth Page",
                      onClicked: () => selectedItem(context, 4)),
                ]))));
  }

  Widget buildMenuItem({required String text, VoidCallback? onClicked}) {
    return ListTile(
      title: Text(text,
          style: const TextStyle(color: Color.fromRGBO(53, 195, 145, 1))),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MyHomePage(title: "Home Page"),
        ));
        break;
      case -1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AboutPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => FirstPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SecondPage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ThirdPage(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const FourthPage(),
        ));
        break;
    }
  }
}
