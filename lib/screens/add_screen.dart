import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/data/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/data/tasks_data.dart';

String newTask;

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Title',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTask = newText;
              },
            ),
            Padding(padding: EdgeInsets.only(bottom: 30.0)),
            FlatButton(
              onPressed: () {
                Provider.of<TasksData>(context, listen: false).addTask(newTask);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 15.0),
              ),
              color: Colors.lightBlueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
