import 'package:flutter/material.dart';

import '../page/about_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 0);



  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material (
        color: const Color.fromRGBO(36,36,36,1),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(30,30,30,1),
              ),
              height: 60.0,
              child: const DrawerHeader(
                child: Text("Bonk Team Inc.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Color.fromRGBO(53,195,145,1)))
              ),
            ),
            buildMenuItem(
                text:"Home Page",
                onClicked: () => selectedItem(context, 1)
            ),
            buildMenuItem(
              text:"About",
              onClicked: () => selectedItem(context, 0)
            ),
          ]
        )
      )
    );
  }

  Widget buildMenuItem({required String text, VoidCallback? onClicked}){
    return ListTile(
      title: Text(text, style: const TextStyle(color: Color.fromRGBO(53,195,145,1))),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop();
    switch (index){
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AboutPage(),
            )
        );
        break;
      case 1:
        Navigator.of(context).popUntil((route) => route.isFirst);
    }
  }

}