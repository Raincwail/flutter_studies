import 'package:flutter/material.dart';
import 'package:flutter_studies/widget/bottom_navigation_bar_widget.dart';
import 'package:flutter_studies/widget/navigation_drawer_widget.dart';

class MyScaffold extends StatelessWidget {
  final String title;
  final Widget body;
  final int index;

  const MyScaffold({Key? key, this.title = "Заголовок", required this.body, this.index = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width > 420) {
      return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Row(
          children: [
            const NavigationDrawerWidget().build(context, width: 150),
            Expanded(flex: 3, child: body),
          ],
        ),
      );
    } else {
      // return Scaffold(
      //   appBar: AppBar(title: Text(title)),
      //   drawerEdgeDragWidth: width * 0.7,
      //   // drawer: const NavigationDrawerWidget().build(context, width:width * 0.7),
      //   bottomNavigationBar: MyStatefulWidgetState(),
      //   body: body,
      // );
      return Scaffold(
          body: Row(
            children: [
              Expanded(flex: 3, child: body),
            ],
          ),
        bottomNavigationBar: MyStatefulWidgetState(context: context, title: title, body: body, index: index).build(context),
      );
    }
  }
}
