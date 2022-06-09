class Task {
  bool isDone;
  final String taskText;

  Task({this.taskText, this.isDone = false});

  void makeItOpposite() {
    isDone = !isDone;
  }
}
