import 'package:flutter/material.dart';

class Archived_Tasks extends StatefulWidget {
  const Archived_Tasks({super.key});

  @override
  State<Archived_Tasks> createState() => _Archived_TasksState();
}

class _Archived_TasksState extends State<Archived_Tasks> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Text(
          "Archived ",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
