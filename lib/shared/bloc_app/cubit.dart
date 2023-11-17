import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/modules/archived_todo_tasks/archived.dart';
import 'package:udemy_mansour/modules/done_tasks_todo/done_tasks_screen.dart';
import 'package:udemy_mansour/modules/new_tasks_todo/new_tasks_screen.dart';
import 'package:udemy_mansour/shared/bloc_app/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit(super.initialState);

  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = [
    New_Tasks_ToDo(),
    Done_Task_ToDo(),
    Archived_Tasks(),
  ];
  List<String> titleScreen = ["New Tasks", "Done Tasks", "Archived Tasks"];
  int currentindex = 0;

  void changeIndex(int index) {
    currentindex = index;
    emit(AppChangeBottomNavBarState());
  }
}
