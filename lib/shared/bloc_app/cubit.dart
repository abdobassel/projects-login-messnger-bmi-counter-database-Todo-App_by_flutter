import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_mansour/modules/archived_todo_tasks/archived.dart';
import 'package:udemy_mansour/modules/done_tasks_todo/done_tasks_screen.dart';
import 'package:udemy_mansour/modules/new_tasks_todo/new_tasks_screen.dart';
import 'package:udemy_mansour/shared/bloc_app/states.dart';
import 'package:sqflite/sqflite.dart';

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

  Database? database;

  List<Map> newTasks = [];
  List<Map> archiveTasks = [];
  List<Map> doneTasks = [];

  void createDatabase() async {
    openDatabase('todo.db', version: 1, onCreate: (db, version) async {
      db.execute(
          'create table tasks(id integer primary key, title text, date text, time text, status text)');
      print('created table');
    }, onOpen: (db) {
      print('opened');
      getDatabase(db);
    }).then((value) {
      database = value;
      print('Created datebase');
      emit(AppCreateDatabaseState());
    });
  }

  void getDatabase(db) {
    newTasks = [];
    archiveTasks = [];
    doneTasks = [];

    db!.rawQuery("select * from tasks").then((value) {
      print(value);
      value.forEach((element) {
        if (element['status'] == 'NewTask') {
          newTasks.add(element);
        } else if (element['status'] == 'done') {
          doneTasks.add(element);
        } else {
          archiveTasks.add(element);
        }
      });

      emit(AppGetDatabaseState());
    });
  }

  // update logic
  void updateDatabase({required String status, required int id}) async {
    database?.rawUpdate('UPDATE tasks SET status = ? WHERE id = ?',
        ['$status', id]).then((value) {
      getDatabase(database);
      emit(AppUpdateDatabaseState());
    });
  }

  bool onBtmSheet = true;
  IconData fabicon = Icons.edit;

  void changeBottomSheet({
    required bool isShow,
    required IconData icon,
  }) {
    onBtmSheet = isShow;
    fabicon = icon;
    emit(AppChangeBottomSheetState());
  }

  void insertToDataBase(
      {required String title,
      required String date,
      required String time}) async {
    return await database?.transaction((txn) async {
      try {
        txn
            .rawInsert(
                'INSERT INTO tasks (title,date,time,status) VALUES ("$title","$date","$time","NewTask")')
            .then((value) {
          print(value);
          emit(AppInsertDatabaseState());
          getDatabase(database);
        });
        print('inserted database');
      } catch (error) {
        print('error is ${error.toString()}');
      }
    });
  }
}
