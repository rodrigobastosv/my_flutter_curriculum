import 'package:flutter/material.dart';
import 'package:my_flutter_curriculum/model/app.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AppWebviewPage extends StatefulWidget {
  AppWebviewPage(this.app);

  final App app;

  @override
  _AppWebviewPageState createState() => _AppWebviewPageState();
}

class _AppWebviewPageState extends State<AppWebviewPage> {
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.app.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: widget.app.playstoreUrl,
            ),
          ),
        ],
      ),
    );
  }
}
