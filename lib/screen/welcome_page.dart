// ignore_for_file: avoid_unnecessary_containers

import 'package:all_of_us_are_dead1/cubit/app_cubit.dart';
import 'package:all_of_us_are_dead1/wid/app_large_Text.dart';
import 'package:all_of_us_are_dead1/wid/app_text.dart';
import 'package:all_of_us_are_dead1/wid/responsive_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({super.key});

  @override
  State<Welcomepage> createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  List images = [
    'images/kk.jpg',
    'images/travel.jpg',
    'images/travel3.jpg',
    'images/travel2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 4,
          scrollDirection: Axis.vertical,
          // ignore: body_might_complete_normally_nullable
          itemBuilder: (_, index) {
            return Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  // ignore: prefer_interpolation_to_compose_strings
                  image: DecorationImage(
                      image: AssetImage(images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 'Trips'),
                        AppText(
                          text: 'Highlands',
                          size: 30,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 250,
                          child: AppText(
                            text:
                                'Highlands are geographical regions characterized by their elevated terrain and generally higher altitudes compared to the surrounding areas. These areas are often covered with rolling hills, mountains, plateaus, and sometimes, volcanic formations. ',
                            size: 14,
                            color: Colors.white60,
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: (){
                            BlocProvider.of<AppCubit>(context).getData();
                          },
                          child: Container(
                            width: 200, child: ResponsiveButton(width: 70)),
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(4, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: index==indexDots?Colors.white:Colors.white.withOpacity(0.3)),
                      );
                    }))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
