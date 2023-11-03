import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final double size;
  final Color borderColor;
  final String text;
   IconData? icon;
 bool isIcon;

   AppButton({super.key, 
    required this.size,
    required this.color,
    required this.backgroundColor,
    required this.borderColor,
    required this.text,
     this.icon,
    required this.isIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: Center(
        child: isIcon
            ? Icon(
                icon,
                color: color,
              )
            : Text(
                text,
                style: TextStyle(
                  color: color,
                ),
              ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10.0,
      children: List.generate(5, (index) {
        return InkWell(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: AppButton(
              size: 50,
              color: selectedIndex == index ? Colors.white : Colors.black,
              backgroundColor:
                  selectedIndex == index ? Colors.black : Colors.grey,
              borderColor:
                  selectedIndex == index ? Colors.black : Colors.grey,
              isIcon: false,
              text: (index + 1).toString(),
              icon: Icons.star, // Replace with your desired icon
            ),
          ),
        );
      }),
    );
  }
}

