import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

   TaskTile({
    Key? key,
     required this.isChecked,
     required this.taskTitle,
     required this.checkBoxCallBack,
  }) : super(key: key);

  final bool isChecked;
  final String taskTitle;
  final Function(bool?) checkBoxCallBack;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle ,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        checkColor: Colors.white,
        onChanged: checkBoxCallBack,
        value: isChecked,
      ),
    );
  }
}