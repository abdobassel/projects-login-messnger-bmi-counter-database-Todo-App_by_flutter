import 'package:flutter/material.dart';

class Done_Task_ToDo extends StatefulWidget {
  const Done_Task_ToDo({super.key});

  @override
  State<Done_Task_ToDo> createState() => _Done_Task_ToDoState();
}

class _Done_Task_ToDoState extends State<Done_Task_ToDo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Done Tasks",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
