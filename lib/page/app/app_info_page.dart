import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:my_flutter_curriculum/model/app.dart';

import 'app_webview_page.dart';

class AppInfoPage extends StatelessWidget {
  AppInfoPage(this.app);

  final App app;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(app.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            GFCarousel(
              height: 300,
              autoPlay: true,
              enlargeMainPage: true,
              items: app.images.map(
                (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.asset(url, fit: BoxFit.cover, width: 800.0),
                    ),
                  );
                },
              ).toList(),
            ),
            SizedBox(height: 12),
            Text(app.description),
            SizedBox(height: 12),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              children: app.stuffUsed
                  .map(
                    (t) => Chip(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(0),
                      label: Text(t, style: TextStyle(color: Colors.white)),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => AppWebviewPage(app)),
                );
              },
              child: SizedBox(
                height: 80,
                width: 200,
                child: Image.network(
                    'https://play.google.com/intl/en_us/badges/static/images/badges/en_badge_web_generic.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
