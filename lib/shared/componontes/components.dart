import 'package:flutter/material.dart';
import 'package:udemy_mansour/shared/bloc_app/cubit.dart';
import 'package:udemy_mansour/shared/componontes/constants.dart';

//Button default color blue now
Widget DefaultButton({
  required String text,
  required final void Function()? function,
  //old code not working Function function, => because null safty
  bool isUperCase = true,
  double width = double.infinity,
  Color background = Colors.blue,
  double radius = 10.0,
}) =>
    Container(
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );

//Form Field Text
Widget DefaultTextForm({
  required TextEditingController controller,
  required String? labeltext,
  required String? Function(String?)? validate,
  String? Function(String?)? onSubmit,
  String? Function(String?)? onchange, //null-safety
  required TextInputType type,
  required IconData prefix,
  bool isPassword = false,
  IconData? suffixIcon,
  Function()? showPassfunc,
  Function()? onTap,
}) =>
    TextFormField(
      onTap: onTap,
      onChanged: onchange,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      validator: validate,
      textAlign: TextAlign.center,
      controller: controller,
      keyboardType: type,
      decoration: InputDecoration(
        labelText: labeltext,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(18)),
        floatingLabelAlignment: FloatingLabelAlignment.center,
        prefix: Icon(
          prefix,
        ),
        suffixIcon: suffixIcon != null
            ? IconButton(onPressed: showPassfunc, icon: Icon(suffixIcon))
            : null,
      ),
    );

Widget ItemTaskBuilder(
  context, {
  required String txt,
  required String date,
  required String time,
  required int id,
  required String status,
}) =>
    Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue,
          child: Text(
            '$time',
            style: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$txt',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '$date',
                style: TextStyle(color: Colors.grey[300], fontSize: 18),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(
          width: 15,
        ),
        IconButton(
          onPressed: () {
            AppCubit.get(context).updateDatabase(status: 'done', id: id);
          },
          icon: Icon(Icons.check_circle),
          color: Colors.green,
          iconSize: 30,
        ),
        SizedBox(
          width: 5,
        ),
        IconButton(
          onPressed: () {
            AppCubit.get(context).updateDatabase(status: 'archived', id: id);
          },
          icon: Icon(Icons.archive),
          color: Colors.black54,
          iconSize: 30,
        )
      ],
    );
