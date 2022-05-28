import 'package:flutter/material.dart';
import 'package:flutter_studies/widget/projects.dart';
import '../widget/projects_widget.dart';

import '../widget/my_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  static const String title = "Our Projects";

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      title: title,
      body: buildBody(context),
      index: 2,
    );
  }

  buildBody(BuildContext context) {
    List<Projects> projectList = [];

    projectList.add(Projects(
        title: "weatherProject",
        description: "Генерация текстового прогноза погоды",
        githubURL: "https://github.com/nikitasigal/weatherProject"));
    projectList.add(Projects(
        title: "calculatorProject",
        description: "Калькулятор комплексных чисел",
        githubURL: "https://github.com/nikitasigal/refactorProject"));
    projectList.add(Projects(
        title: "refactorProject",
        description: "Простейший анализ и форматирование кода С",
        githubURL: "https://github.com/nikitasigal/calculatorProject"));
    projectList.add(Projects(
        title: "chatProject",
        description: "Сетевое приложение чат",
        githubURL: "https://github.com/nikitasigal/chatProject"));
    projectList.add(Projects(
        title: "studhubProject",
        description: "Приложение записная книжка для студента",
        githubURL: "https://github.com/xSVTx/DB-HSE-Project"));

    return Center(
        child: ListView.builder(
            itemCount: projectList.length,
            itemBuilder: (context, index) {
              return ProjectsWidget(intro: projectList[index]);
            }));
  }
}
