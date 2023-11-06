import 'package:flutter/material.dart';
import 'package:udemy_mansour/login.dart';
import 'package:udemy_mansour/messanger_screen.dart';

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
      home: const MessangerScreen(),
    );
  }
}
