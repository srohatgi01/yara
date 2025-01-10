import 'package:flutter/material.dart';
import 'package:yara/data/Project.dart';
import 'package:yara/ui/projectSection/TasksList.dart';

import '../../data/Task.dart';

class ProjectSection extends StatelessWidget {
  List<Task> tasks = List.generate(2, (index) {
    return Task();
  });
  final Project project;

  ProjectSection({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40, left: 32, right: 32),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(project.head, style: TextStyle(fontSize: 32)),
          SizedBox(height: 15),
          TasksList(tasks: tasks),
        ],
      ),
    );
  }
}
