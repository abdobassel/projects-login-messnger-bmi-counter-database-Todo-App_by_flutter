import 'package:flutter/material.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            icon: Icon(
              Icons.add,
              color: Colors.grey,
            ),
            iconSize: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '$counter',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            icon: Icon(
              Icons.minimize,
            ),
            iconSize: 30,
          )
        ],
      )),
    );
  }
}
