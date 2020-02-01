import 'package:flutter/material.dart';
import 'package:my_flutter_curriculum/model/category.dart';

class AppsListPage extends StatelessWidget {
  AppsListPage(this.category);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 150,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                category.image,
                fit: BoxFit.cover,
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('Todas as Cidades'),
                    ),
                    const Divider(height: 1),
                  ],
                );
              },
              childCount: 6,
            ),
          ),
        ],
      ),
    );
  }
}
