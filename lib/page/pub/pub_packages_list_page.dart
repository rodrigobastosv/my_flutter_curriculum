import 'package:flutter/material.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:my_flutter_curriculum/data.dart';
import 'package:my_flutter_curriculum/model/pub_package.dart';
import 'package:my_flutter_curriculum/page/pub/pub_info_page.dart';

class PubPackagesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My pub Packages'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => PubPackageItem(pubPackages[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: pubPackages.length,
      ),
    );
  }
}

class PubPackageItem extends StatelessWidget {
  const PubPackageItem(this.package);

  final PubPackage package;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => PubInfoPage(package),
        ),
      ),
      child: GFListTile(
        titleText: package.name,
        subtitleText: package.description,
        icon: GFAvatar(
          backgroundColor:
              int.parse(package.rating) <= 50 ? Colors.red : Colors.blue,
          child: Text(
            package.rating,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
