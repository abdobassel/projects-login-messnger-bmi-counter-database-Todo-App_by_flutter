import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/shared/bloc_app/cubit.dart';
import 'package:udemy_mansour/shared/bloc_app/states.dart';
import 'package:udemy_mansour/shared/componontes/components.dart';

class Done_Task_ToDo extends StatefulWidget {
  const Done_Task_ToDo({super.key});

  @override
  State<Done_Task_ToDo> createState() => _Done_Task_ToDoState();
}

class _Done_Task_ToDoState extends State<Done_Task_ToDo> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        var tasks = AppCubit.get(context).doneTasks;
        return Container(
          padding: EdgeInsets.all(18),
          child: ListView.separated(
            itemBuilder: (context, index) {
              return ItemTaskBuilder(context,
                  id: tasks[index]["id"],
                  status: tasks[index]['status'],
                  txt: tasks[index]['title'],
                  date: tasks[index]['date'],
                  time: tasks[index]['time']);
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
      },
      listener: (context, state) {},
    );
  }
}
