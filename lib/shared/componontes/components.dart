import 'package:flutter/material.dart';

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
}) =>
    TextFormField(
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
