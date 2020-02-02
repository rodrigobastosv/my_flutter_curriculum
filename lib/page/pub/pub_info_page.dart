import 'package:flutter/material.dart';
import 'package:my_flutter_curriculum/model/pub_package.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PubInfoPage extends StatefulWidget {
  const PubInfoPage(this.package);

  final PubPackage package;

  @override
  _PubInfoPageState createState() => _PubInfoPageState();
}

class _PubInfoPageState extends State<PubInfoPage> {
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.package.name),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: widget.package.url,
            ),
          ),
        ],
      ),
    );
  }
}
