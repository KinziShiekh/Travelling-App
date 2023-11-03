import 'package:all_of_us_are_dead1/screen/navpage/bar_item.dart';
import 'package:all_of_us_are_dead1/screen/navpage/homepage.dart';
import 'package:all_of_us_are_dead1/screen/navpage/mypage.dart';
// ignore: unused_import
import 'package:all_of_us_are_dead1/screen/navpage/searchpage.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    const HomePage(),
    const Searchpage(),
    const BarItemsPage(),
    const Mypage(),


  ];
  int currentIndex=0;
 void onTap(int index){
setState(() {
  currentIndex=index;
});

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      backgroundColor: Colors.white,
    
      bottomNavigationBar:
          BottomNavigationBar(
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedFontSize: 0,
            currentIndex: currentIndex,
            selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 0,
           items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.apps)),
        BottomNavigationBarItem(
            label: 'Bar', icon: Icon(Icons.bar_chart_sharp)),
        BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
        BottomNavigationBarItem(label: 'MyProfile', icon: Icon(Icons.person)),
      ]),
    );
  }
}
