import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_app/widgets/task_tile.dart';
import 'package:todoey_app/models/task_data.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (BuildContext context, int index) {
            final task = taskData.tasks[index];
            return TaskTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkBoxCallBack: (bool? checkboxState) {
                  taskData.updateTask(task);
                },
                longPress: () {
                  taskData.deleteTask(task: task);
                },
            );
          },
        );
      },
    );
  }
}