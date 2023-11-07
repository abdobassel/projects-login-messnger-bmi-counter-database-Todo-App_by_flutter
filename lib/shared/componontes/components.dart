import 'package:flutter/material.dart';

Widget DefaultButton({
  required Function function,
  double width = double.infinity,
  Color background = Colors.blue,
}) =>
    Container(
      width: width,
      color: background,
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          "log out",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
