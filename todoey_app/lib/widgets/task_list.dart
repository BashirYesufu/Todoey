import 'package:flutter/material.dart';
import 'package:todoey_app/models/task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  const TaskList({
    Key? key,
    required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;
  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.tasks.length,
      itemBuilder: (BuildContext context, int index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkBoxCallBack: (bool? checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          }
        );
      },
    );
  }
}