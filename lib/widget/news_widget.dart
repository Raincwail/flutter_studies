import 'package:flutter/material.dart';

import 'news.dart';

class NewsWidget extends StatelessWidget {
  final News intro;

  const NewsWidget({Key? key, this.intro = const News()}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 420) ? width * 0.5 : width * 0.9,
      height: 300,
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          border: Border.all(width: 1.2),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(intro.title),
          const Expanded(
              child: Card(
            child: Text("Photo placeholder"),
          )),
          Text(intro.text),
        ],
      ),
    );
  }
}
