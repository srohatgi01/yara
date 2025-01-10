import 'package:flutter/material.dart';

import '../../data/Task.dart';

class TasksList extends StatelessWidget {
  final List<Task> tasks;
  const TasksList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: tasks.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
      return Container(
        child: Row(children: [

        ],)
      );
    });
  }
}
