import 'package:flutter/material.dart';
import '../widget/my_scaffold.dart';
import '../widget/news.dart';
import '../widget/news_widget.dart';

class FirstPage extends StatelessWidget {
  static const String title = "Articles";

  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
      index: 1,
    );
  }

  buildBody(BuildContext context) {
    List<News> listArray = [];

    listArray.add(const News(
        title: "Ребёнка задавила машина", text: "Умф говорят очевидцы"));
    listArray.add(const News(
        title: "Ребёнок задавил машину", text: "Втф говорят очевидцы"));
    listArray.add(const News(
        title: "Задавил ребёнка машины", text: "Очевидцы говорят очевидцы"));

    return ListView.builder(
      itemCount: listArray.length,
      itemBuilder: (context, index) {
        return NewsWidget(intro: listArray[index]);
      },
    );
  }
}
