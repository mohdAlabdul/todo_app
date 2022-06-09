import 'package:flutter/cupertino.dart';
import 'tasks.dart';
import 'package:provider/provider.dart';

class TasksData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskText: 'eat healthy'),
    Task(taskText: 'SWE 444 Project'),
  ];

  void addTask(String newTask) {
    tasks.add(Task(taskText: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.makeItOpposite();
    notifyListeners();
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
    notifyListeners();
  }
}
