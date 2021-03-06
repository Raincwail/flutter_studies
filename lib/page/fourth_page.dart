import 'package:flutter/material.dart';

import '../widget/my_scaffold.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key}) : super(key: key);

  static const String title = "Страница 4";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
      index: 4,
    );
  }

  buildBody(BuildContext context) {
    return const Center(
      child: Text(title),
    );
  }
}
