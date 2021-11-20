import 'package:flutter/material.dart';

class TaskCheckBox extends StatelessWidget {
  const TaskCheckBox({
    Key? key,
    required this.checkBoxState,
    required this.toggleCheckboxState,
  }) : super(key: key);

  final bool checkBoxState;
  final Function(bool?) toggleCheckboxState;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      checkColor: Colors.white,
      onChanged: toggleCheckboxState,
      value: checkBoxState,
    );
  }
}