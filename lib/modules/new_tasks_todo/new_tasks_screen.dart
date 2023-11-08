import 'package:flutter/material.dart';

class New_Tasks_ToDo extends StatefulWidget {
  const New_Tasks_ToDo({super.key});

  @override
  State<New_Tasks_ToDo> createState() => _New_Tasks_ToDoState();
}

class _New_Tasks_ToDoState extends State<New_Tasks_ToDo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "NewTasks",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
