import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {

  AddTaskBottomSheet({
    Key? key,
    required this.addTaskCallBack
  }) : super(key: key);

  final Function(String) addTaskCallBack;

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30.0,),
          TextButton(
            onPressed: () {
              addTaskCallBack(newTaskTitle);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
          ),
        ],
      ),
    );
  }
}
