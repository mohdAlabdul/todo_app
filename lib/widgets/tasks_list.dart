import 'package:flutter/material.dart';
import 'task_title.dart';
import 'package:todoapp/data/tasks_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          taskTitle: Provider.of<TasksData>(context).tasks[index].taskText,
          checked: Provider.of<TasksData>(context).tasks[index].isDone,
          callback: (newValue) {
            Provider.of<TasksData>(context, listen: false).updateTask(
                Provider.of<TasksData>(context, listen: false).tasks[index]);
          },
          longcallback: () {
            Provider.of<TasksData>(context, listen: false).deleteTask(index);
          },
        );
      },
      itemCount: Provider.of<TasksData>(context).tasks.length,
    );
  }
}
