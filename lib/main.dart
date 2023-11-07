import 'package:flutter/material.dart';
import 'package:udemy_mansour/bmi_calc.dart';
import 'package:udemy_mansour/counter_screen.dart';
import 'package:udemy_mansour/messanger_screen.dart';
import 'package:udemy_mansour/users_screen.dart';

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
      home: BmiCalc(),
    );
  }
}
