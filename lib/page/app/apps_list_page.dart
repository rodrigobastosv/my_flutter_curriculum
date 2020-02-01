import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:my_flutter_curriculum/model/app.dart';
import 'package:my_flutter_curriculum/model/category.dart';

import '../../data.dart';
import 'app_info_page.dart';

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
              (_, i) => AppItemCard(apps[i]),
              childCount: apps.length,
            ),
          ),
        ],
      ),
    );
  }
}

class AppItemCard extends StatelessWidget {
  AppItemCard(this.app);

  final App app;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => AppInfoPage(app)));
      },
      child: GFListTile(
        avatar: GFAvatar(
          backgroundImage: AssetImage(app.logo),
        ),
        titleText: app.name,
        subtitleText: app.releaseDate,
      ),
    );
  }
}
