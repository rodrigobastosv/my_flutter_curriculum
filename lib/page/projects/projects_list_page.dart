import 'package:flutter/material.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:my_flutter_curriculum/data.dart';
import 'package:my_flutter_curriculum/model/project.dart';
import 'package:my_flutter_curriculum/page/projects/project_info_page.dart';

class ProjectsListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My pub Packages'),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (_, i) => ProjectItem(projects[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: projects.length,
      ),
    );
  }
}

class ProjectItem extends StatelessWidget {
  const ProjectItem(this.project);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (_) => ProjectInfoPage(project),
        ),
      ),
      child: GFListTile(
        titleText: project.name,
        subtitleText: project.releaseDate,
      ),
    );
  }
}
