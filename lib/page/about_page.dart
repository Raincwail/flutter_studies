import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text("About Us"),
    ),
    body:
      Center(
        child:
        GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Stack(
                  children: <Widget>[
                    Image.network('https://sun7-9.userapi.com/s/v1/if1/GxSuG39dWmaomcVHgrPTm7kx8-85jRpbrCR6e5Faa8krsDDqyGsT9stgy43hQU4QxgZDS1Q1.jpg?size=200x299&quality=96&crop=39,59,721,1081&ava=1'),
                    const Positioned(
                        bottom: 0,
                        left: 90,
                        child: Text("Бычок",
                                    style: TextStyle(fontSize: 20.0),
                        ),
                    ),
                  ]),
            ),
            onTap: () => launchUrl(Uri.parse("https://vk.com/il.bychkov")),
            ),
            InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Stack(
                  children: <Widget>[
                    Image.network('https://sun7-9.userapi.com/s/v1/ig2/zE48mloWWAtLdCQgs0a04Fwo1JhVy1scOU1Fn8CZT_8EOq6y7iQxbZvPopgBm_E_d0WedfvT2xnRbl74qqa7y_nm.jpg?size=200x200&quality=96&crop=11,0,968,968&ava=1'),
                    const Positioned(
                      bottom: 0,
                      left: 90,
                      child: Text("Костич",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),
            ),
            onTap: () => launchUrl(Uri.parse("https://vk.com/korostast")),
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Stack(
                    children: <Widget>[
                      Image.network('https://sun7-13.userapi.com/s/v1/ig2/l043jFTwlPN63rwg86DtdutvOL7AJKhpKo4mZ2-q-XZmMKsMQ0z4uOkLnbjJDN6ThZOglV67lzJBikP3NWdNZK9I.jpg?size=200x299&quality=95&crop=0,2,2560,1712&rotate=90&ava=1'),
                      const Positioned(
                        bottom: 0,
                        left: 90,
                        child: Text("Надька",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ]),

              ),
              onTap: () => launchUrl(Uri.parse("https://vk.com/nadya_dmitrievna")),
            ),
            InkWell(
            child: Container(
              padding: const EdgeInsets.all(8),
              color: Colors.teal[100],
              child: Stack(
                  children: <Widget>[
                    Image.network('https://sun7-13.userapi.com/s/v1/ig2/t-hEW320XwCYlnzV8OLqCuYBvkcbZJJX6R6PVN6f7AduTZl67Q5v69CVdQ0Ck4qvSING8ap9W7TX7QPFssCGAbp5.jpg?size=200x200&quality=96&crop=66,0,1374,1374&ava=1'),
                    const Positioned(
                      bottom: 0,
                      left: 90,
                      child: Text("Я лол",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ]),

            ),
            onTap: () => launchUrl(Uri.parse("https://vk.com/razuch")),
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Stack(
                    children: <Widget>[
                      Image.network('https://sun7-14.userapi.com/s/v1/ig2/FRYPpttSYi8dJ6wgVg1afhcdg-nsaXe8aUWQtlleSk1zvvK1vPqD_gwxTuyAbg2ENIn-sTyBnVcCwHI5I7sq62kp.jpg?size=200x200&quality=95&crop=282,371,391,391&ava=1'),
                      const Positioned(
                        bottom: 0,
                        left: 90,
                        child: Text("Гений",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ]),

              ),
              onTap: () => launchUrl(Uri.parse("https://vk.com/drunkvermicelli")),
            ),
            InkWell(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: Colors.teal[100],
                child: Stack(
                    children: <Widget>[
                      Image.network('https://sun7-9.userapi.com/s/v1/ig2/uYF7jk5RO6lCnPjlHubUM1eVPvd013Zvt5lvI_32y7xQyk3eHmn6NZccDZ5QX-bruCf-Zb6mkqjpx2ssVjNBRQ8r.jpg?size=200x200&quality=95&crop=19,218,1563,1563&ava=1'),
                      const Positioned(
                        bottom: 0,
                        left: 90,
                        child: Text("Юлич",
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ),
                    ]),

              ),
              onTap: () => launchUrl(Uri.parse("https://vk.com/smoljuliette")),
            )
          ],
        ),
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     Image.asset('lib/assets/images/img.png'),
        //     const Text("So... We are a group of little motherfucker  s. And we solve problems.")
        //   ]
        // ),
      ),
  );
}