import 'package:flutter/foundation.dart';
import 'package:flutter_to_do/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Task A'),
    Task(name: 'Task B'),
    Task(name: 'Task C'),
  ];

  // getter for task list
  int get taskCount {
    return tasks.length;
  }
}
