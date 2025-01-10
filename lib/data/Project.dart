import 'dart:collection';

import 'package:yara/data/Task.dart';

class Project {
  String head;
  late List<Task> tasks;
  Project(this.head);
}