import 'package:flutter/material.dart';
import 'package:udemy_mansour/modules/archived_todo_tasks/archived.dart';
import 'package:udemy_mansour/modules/done_tasks_todo/done_tasks_screen.dart';
import 'package:udemy_mansour/modules/new_tasks_todo/new_tasks_screen.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  List<Widget> screens = [
    New_Tasks_ToDo(),
    Done_Task_ToDo(),
    Archived_Tasks(),
  ];
  List<String> titleScreen = ["New Tasks", "Done Tasks", "Archived Tasks"];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${titleScreen[currentindex]}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          unselectedFontSize: 25,
          selectedFontSize: 25,
          backgroundColor: Colors.grey[300],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'New Tasks'),
            BottomNavigationBarItem(
                icon: Icon(Icons.check_circle), label: 'Done'),
            BottomNavigationBarItem(
                icon: Icon(Icons.archive), label: 'Archived'),
          ]),
      body: screens[currentindex],
    );
  }
}
