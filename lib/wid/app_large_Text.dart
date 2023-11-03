// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppLargeText({Key? key,
  this.size=30,
   required this.text, 
    this.color=Colors.white}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold
      ),
    );
  }
}