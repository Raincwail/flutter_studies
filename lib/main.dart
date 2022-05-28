import 'package:flutter/material.dart';
import 'package:flutter_studies/widget/my_scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bonk Team Inc.',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromRGBO(36, 36, 36, 1),
        brightness: Brightness.dark,
        textTheme: const TextTheme(
          headline6:
              TextStyle(fontSize: 20.0, color: Color.fromRGBO(53, 195, 145, 1)),
        ),
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Color.fromRGBO(53, 195, 145, 1)),
        ),
      ),
      home: const MyHomePage(title: "Home Page"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return MyScaffold(title: "Home Page", body: buildBody(context), index: 0);
  }

  Widget buildBody(context) {
    return const Center(
      child: Text("PlaceHolder"),
    );
  }
}
