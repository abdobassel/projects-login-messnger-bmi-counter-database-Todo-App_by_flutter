import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_mansour/modules/archived_todo_tasks/archived.dart';
import 'package:udemy_mansour/modules/done_tasks_todo/done_tasks_screen.dart';
import 'package:udemy_mansour/modules/new_tasks_todo/new_tasks_screen.dart';
import 'package:udemy_mansour/shared/bloc_app/cubit.dart';
import 'package:udemy_mansour/shared/bloc_app/states.dart';
import 'package:udemy_mansour/shared/componontes/components.dart';
import 'package:udemy_mansour/shared/componontes/constants.dart';

class TodoApp extends StatelessWidget {
  TodoApp({super.key});

  //data base

  // List<Map> tasks = [];
  var scaffoldKey = GlobalKey<ScaffoldState>();
  var _formstate = GlobalKey<FormState>();

  var titleConroller = TextEditingController();
  var timeController = TextEditingController();
  var dateController = TextEditingController();

/*  @override
  void initState() {
    super.initState();

    createDatabase();
  }
  */

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(AppInitState())..createDatabase(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar:
                AppBar(title: Text('${cubit.titleScreen[cubit.currentindex]}')),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                cubit.insertToDataBase(
                    date: dateController.text,
                    time: timeController.text,
                    title: titleConroller.text);
                if (cubit.onBtmSheet) {
                  scaffoldKey.currentState
                      ?.showBottomSheet(
                        (context) => Container(
                          padding: EdgeInsets.all(20),
                          color: Colors.grey[250],
                          child: Form(
                            key: _formstate,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DefaultTextForm(
                                    controller: titleConroller,
                                    labeltext: 'Title',
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return 'not be  title empty please???';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.text,
                                    prefix: Icons.title),
                                SizedBox(
                                  height: 14,
                                ),
                                DefaultTextForm(
                                    onTap: () {
                                      showTimePicker(
                                              context: context,
                                              initialTime: TimeOfDay.now())
                                          .then((value) => {
                                                if (value != null)
                                                  {
                                                    timeController.text = value
                                                        .format(context)
                                                        .toString(),
                                                  }
                                              });
                                    },
                                    controller: timeController,
                                    labeltext: 'Time',
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return 'not be empty please???';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.datetime,
                                    prefix: Icons.watch_later),
                                SizedBox(
                                  height: 14,
                                ),
                                DefaultTextForm(
                                    onTap: () {
                                      showDatePicker(
                                              context: context,
                                              initialDate: DateTime.now(),
                                              firstDate: DateTime.now(),
                                              lastDate: DateTime(2023, 12, 31))
                                          .then((value) => {
                                                if (value != null)
                                                  {
                                                    dateController.text =
                                                        value.toString(),
                                                  }
                                              });
                                    },
                                    controller: dateController,
                                    labeltext: 'Date',
                                    validate: (value) {
                                      if (value!.isEmpty) {
                                        return 'DAte not be empty please???';
                                      }
                                      return null;
                                    },
                                    type: TextInputType.datetime,
                                    prefix: Icons.calendar_month_rounded),
                              ],
                            ),
                          ),
                        ),
                      )
                      .closed
                      .then(
                        (value) => {
                          cubit.changeBottomSheet(
                              isShow: false, icon: Icons.edit),
                        },
                      );

                  cubit.changeBottomSheet(isShow: true, icon: Icons.edit);
                } else {
                  if (_formstate.currentState != null) {
                    if (_formstate.currentState!.validate()) {
                      cubit.changeBottomSheet(isShow: true, icon: Icons.add);
                      Navigator.pop(context);
                      titleConroller.clear();
                      timeController.clear();
                      dateController.clear();
                    }
                  }
                }
              },
              child: Icon(cubit.fabicon),
            ),
            bottomNavigationBar: BottomNavigationBar(
                iconSize: 40,
                unselectedFontSize: 25,
                selectedFontSize: 25,
                backgroundColor: Colors.grey[300],
                type: BottomNavigationBarType.fixed,
                currentIndex: cubit.currentindex,
                onTap: (index) {
                  cubit.changeIndex(index);
                },
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.menu), label: 'New Tasks'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.check_circle), label: 'Done'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.archive), label: 'Archived'),
                ]),
            body: cubit.screens[cubit.currentindex],
          );
        },
      ),
    );
  }
}
