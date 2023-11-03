import 'package:all_of_us_are_dead1/screen/detail_page.dart';
// ignore: unused_import
import 'package:all_of_us_are_dead1/screen/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
         title: 'Traveling',
        debugShowCheckedModeBanner: false,
       
       // theme: ThemeData.dark(
        //  useMaterial3: true,
       // ),
        home: DetailPage(),
    );
  }
}