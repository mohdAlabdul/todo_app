import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TaskTitle extends StatelessWidget {
  final bool checked;
  final String taskTitle;
  final Function callback;
  final Function longcallback;

  TaskTitle({this.checked, this.taskTitle, this.callback, this.longcallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longcallback,
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration: checked ? TextDecoration.lineThrough : null,
          fontSize: 18.0,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checked,
        onChanged: callback,
      ),
    );
  }
}
