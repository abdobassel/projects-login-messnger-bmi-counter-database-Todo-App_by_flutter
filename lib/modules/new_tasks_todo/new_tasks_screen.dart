import 'package:flutter/material.dart';
import 'package:udemy_mansour/shared/componontes/components.dart';
import 'package:udemy_mansour/shared/componontes/constants.dart';

class New_Tasks_ToDo extends StatefulWidget {
  const New_Tasks_ToDo({super.key});

  @override
  State<New_Tasks_ToDo> createState() => _New_Tasks_ToDoState();
}

class _New_Tasks_ToDoState extends State<New_Tasks_ToDo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ItemTaskBuilder();
        },
        itemCount: tasks.length,
        separatorBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          );
        },
      ),
    );
  }
}
