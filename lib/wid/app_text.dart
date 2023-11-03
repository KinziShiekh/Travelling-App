// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
class AppText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppText({Key? key,
  this.size=16,
   required this.text, 
    this.color=Colors.white}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.w300
      ),
    );
  }
}