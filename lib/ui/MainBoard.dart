import 'package:flutter/material.dart';
import 'package:yara/ui/projectSection/ProjectSection.dart';

import '../data/Project.dart';

class MainBoard extends StatelessWidget {
  final List<Project> projects = List.generate(4, (index) => Project("Project $index"));
  MainBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: projects.length,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return ProjectSection(project: projects[index],);
      },
    );
  }
}
