import 'package:flutter/material.dart';
import 'package:flutter_to_do/models/task.dart';
import 'package:flutter_to_do/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Task A'),
    Task(name: 'Task B'),
    Task(name: 'Task C'),
  ];

  @override
  Widget build(BuildContext context) {
    // ListView builder for dynamic task list view
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
