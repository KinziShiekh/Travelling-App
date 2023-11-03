import 'package:all_of_us_are_dead1/wid/app_button.dart';
import 'package:all_of_us_are_dead1/wid/app_large_Text.dart';
import 'package:all_of_us_are_dead1/wid/app_text.dart';
import 'package:flutter/material.dart';

import '../wid/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStar=4;
  get index => null;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('images/k1.jpg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
              top: 320,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20,top: 20),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: 'Mountains',
                          color: Colors.black54.withOpacity(0.8),
                        ),
                        AppLargeText(
                          text: '\$250',
                          color: Colors.grey,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: 'Murree, Pakistan',
                          color: Colors.black,
                        )
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            return  Icon(Icons.star,color: index<gottenStar?Colors.yellowAccent:Colors.grey,);
                          }),
                        ),
                        const SizedBox(width: 10,),
                        AppText(text: '(4.0)',color: Colors.grey,)
                      ],
                    ),
                    const SizedBox(height: 25,),
                    AppLargeText(text: 'People',color: Colors.black.withOpacity(0.8),size: 20,),
                    const SizedBox(height: 5,),
                    AppText(text: 'Number Of people in your group',color: Colors.grey,),
                    SizedBox(height: 10,),
       Wrap(
          spacing: 5.0,
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
                  text: (index + 1).toString(), isIcon: false,
                ),
              ),
            );
          }),
        ),
      SizedBox(height: 20,),
      AppLargeText(text: 'Description',color: Colors.black.withOpacity(0.8),size: 20,),
      SizedBox(
        height: 10,
      ),
      AppText(text: 'You must go for a travel .Travelling helps get rid of pressure.Go to the mountains to see the nature',color: Colors.grey,)
,
SizedBox(
        height: 50,
      ),
Positioned(
  bottom: 50,
  left: 20,
  right: 20,
   child: Row(
  children: [AppButton(size: 60, color: Colors.grey, backgroundColor: Colors.white, borderColor: Colors.black, text: '', isIcon: true,
  icon: Icons.favorite_border,),
  SizedBox(width: 20,),
 ResponsiveButton(width: 60,isResponsive: true,)
  ],
))
                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
