import 'package:flutter/material.dart';
import 'package:todoey_app/widgets/task_check_box.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'task1',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: TaskCheckBox(
        checkBoxState: isChecked,
        toggleCheckboxState: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}