// ignore_for_file: duplicate_ignore

import 'package:all_of_us_are_dead1/screen/navpage/main_nav.dart';
import 'package:all_of_us_are_dead1/wid/app_large_Text.dart';
import 'package:all_of_us_are_dead1/wid/app_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List images_1 = [
    'images/k1.jpg',
    'images/k2.jpg',
    'images/k3.jpg',
  ];
  var imagesIcon = {
    'images/air-hot-balloon.png': 'Balloning',
    'images/canoe.png': 'KayaKing',
    'images/hiking.png': 'Hiking',
    'images/snorkling.png': 'Snorkling',
  };
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70, left: 20),
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Row(
                children: [
                  const Icon(
                    Icons.menu,
                    size: 30,
                    color: Colors.black,
                  ),
                  Expanded(child: Container()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(
                text: 'Discover',
                color: Colors.black,
              )),
          const SizedBox(
            height: 40,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.black,
                  controller: tabController,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: const CircleTabIndicator(
                    color: Colors.black,
                    radius: 4,
                  ),
                  tabs: const [
                    Tab(
                      text: 'Places',
                    ),
                    Tab(
                      text: 'Inspirations',
                    ),
                    Tab(
                      text: 'Emotions',
                    )
                  ]),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(
              controller: tabController,
              children: [
                ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(right: 15, top: 10),
                      width: 200,
                      height: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                            image: AssetImage(images_1[index]),
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                ),
                const Text('Hi'),
                const Text('there'),
                
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: 'Explore More',
                  color: Colors.black,
                  size: 22,
                ),
                AppLargeText(
                  text: 'See all',
                  color: Colors.grey,
                  size: 22,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 150,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (_, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 30),
                    child: Column(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              image: DecorationImage(
                                image: AssetImage(
                                    imagesIcon.keys.elementAt(index)),
                                fit: BoxFit.cover,
                              )),
                        ),
                        // ignore: prefer_const_constructors
                        SizedBox(height: 20,),
                        Container(
                          
                            child: AppText(
                          text: imagesIcon.values.elementAt(index),
                          color: Colors.grey,
                        ))
                      ],
                    ),
                  );
                }),
          ),

        ],
      ),
    );
  }
}

// ignore: must_be_immutable, duplicate_ignore

class CircleTabIndicator extends Decoration {
  final Color color;
  final double radius;

  const CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final Color color;
  final double radius;

  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(
      Canvas canvas, Offset offset, ImageConfiguration imageConfiguration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    canvas.drawCircle(offset, radius, paint);
  }
}
