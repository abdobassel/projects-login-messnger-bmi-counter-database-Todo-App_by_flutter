import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/shared/bloc_app/cubit.dart';
import 'package:udemy_mansour/shared/bloc_app/states.dart';
import 'package:udemy_mansour/shared/componontes/components.dart';

class Archived_Tasks extends StatefulWidget {
  const Archived_Tasks({super.key});

  @override
  State<Archived_Tasks> createState() => _Archived_TasksState();
}

class _Archived_TasksState extends State<Archived_Tasks> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) {
        var tasks = AppCubit.get(context).archiveTasks;
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
