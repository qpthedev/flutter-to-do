import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter_to_do/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Task A'),
    Task(name: 'Task B'),
    Task(name: 'Task C'),
  ];

  // prevent adding or deleting via List methods
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  // getter for task list length
  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
