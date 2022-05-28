import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'projects.dart';

class ProjectsWidget extends StatelessWidget {
  final Projects intro;

  ProjectsWidget({Key? key, required this.intro}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Container(
      width: (width > 420) ? width * 0.5 : width * 0.9,
      // height: 300,
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(3),
      // decoration: BoxDecoration(
      //     border: Border.all(width: 1.2),),
      child: Column(
        children: [
          TextButton(
            onPressed: () => launchUrl(Uri.parse(intro.githubURL)),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    intro.title,
                    style: const TextStyle(
                        fontSize: 25, color: Color.fromRGBO(53, 195, 145, 1)),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    intro.description,
                    style: const TextStyle(
                        fontSize: 16, color: Color.fromRGBO(80, 80, 80, 1)),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomRight,
          //   child: TextButton(
          //       onPressed: () => launchUrl(Uri.parse(intro.githubURL)),
          //       child: Text("To " + intro.title,
          //           style: const TextStyle(
          //               fontSize: 16, color: Color.fromRGBO(48, 190, 140, 1)))),
          // ),
        ],
      ),
    );
  }
}
