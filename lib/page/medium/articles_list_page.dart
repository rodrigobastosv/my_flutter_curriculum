import 'package:flutter/material.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:my_flutter_curriculum/data.dart';
import 'package:my_flutter_curriculum/model/article.dart';
import 'package:my_flutter_curriculum/page/medium/article_webview_page.dart';

class ArticlesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My pub Packages'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => ArticleItem(articles[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: articles.length,
      ),
    );
  }
}

class ArticleItem extends StatelessWidget {
  const ArticleItem(this.article);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ArticleWebviewPage(article),
        ),
      ),
      child: GFListTile(
        titleText: article.title,
        subtitleText: article.releaseDate,
      ),
    );
  }
}
