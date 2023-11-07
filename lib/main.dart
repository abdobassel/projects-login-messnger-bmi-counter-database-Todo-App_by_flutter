import 'package:flutter/material.dart';
import 'package:udemy_mansour/modules/bmi/bmi_calc.dart';
import 'package:udemy_mansour/modules/counter/counter_screen.dart';
import 'package:udemy_mansour/modules/login/login.dart';
import 'package:udemy_mansour/modules/messenger/messanger_screen.dart';
import 'package:udemy_mansour/modules/users/users_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
