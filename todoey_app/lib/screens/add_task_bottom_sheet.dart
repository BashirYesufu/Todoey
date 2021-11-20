import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatelessWidget {
  const AddTaskBottomSheet({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          ),
          SizedBox(height: 30.0,),
          TextButton(
            onPressed: () {},
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
