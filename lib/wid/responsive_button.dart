// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, empty_constructor_bodies, must_be_immutable

import 'package:all_of_us_are_dead1/wid/app_text.dart';
import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool isResponsive;
  double width;
   // ignore: use_key_in_widget_constructors
 ResponsiveButton({Key? key,
 required this.width,
 this.isResponsive=false,
  
    }):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
       
        width: 200,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),

        color:  Colors.blue),
    height: 60,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center, 
      
      children: [
        
        AppText(text: 'Book trip Now',color: Colors.white,),
      const Icon(Icons.keyboard_arrow_right_sharp,size: 30,)
    ]),
    
      ),
    );
  }
}