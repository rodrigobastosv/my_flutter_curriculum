import 'package:flutter/material.dart';
import 'package:my_flutter_curriculum/model/article.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebviewPage extends StatefulWidget {
  const ArticleWebviewPage(this.article);

  final Article article;

  @override
  _ArticleWebviewPageState createState() => _ArticleWebviewPageState();
}

class _ArticleWebviewPageState extends State<ArticleWebviewPage> {
  final _key = UniqueKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.article.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: widget.article.url,
            ),
          ),
        ],
      ),
    );
  }
}
