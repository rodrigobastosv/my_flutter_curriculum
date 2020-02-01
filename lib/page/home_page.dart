import 'package:flutter/material.dart';
import 'package:getflutter/getflutter.dart';
import 'package:my_flutter_curriculum/model/category.dart';
import 'package:my_flutter_curriculum/page/profile_page.dart';

import '../data.dart';
import 'app/apps_list_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Hero(
          tag: 'ME',
          child: GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProfilePage()));
            },
            child: GFAvatar(
              backgroundImage: AssetImage('assets/me.jpeg'),
            ),
          ),
        ),
        title: Text('My Curriculum'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (_, i) => CategoryItemTile(categories[i]),
      ),
    );
  }
}

class CategoryItemTile extends StatelessWidget {
  CategoryItemTile(this.category);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (category.categoryType == CategoryType.app) {
          _navigate(context, AppsListPage(category));
        } else if (category.categoryType == CategoryType.pub) {
          _navigate(context, AppsListPage(category));
        } else if (category.categoryType == CategoryType.pub) {
          _navigate(context, AppsListPage(category));
        } else {
          _navigate(context, AppsListPage(category));
        }
      },
      child: GFCard(
        boxFit: BoxFit.cover,
        title: GFListTile(
          color: Colors.blue,
          title: Center(
            child: Text(
              category.name,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
        ),
        titlePosition: GFPosition.end,
        padding: EdgeInsets.all(0),
        image: Image.network(category.image),
      ),
    );
  }

  void _navigate(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => page),
    );
  }
}
