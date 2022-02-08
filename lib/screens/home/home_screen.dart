import 'package:flutter/material.dart';
import 'package:instagram/responsive_layout.dart';
import 'package:instagram/widgets/user_post.dart';
import 'package:instagram/widgets/user_story.dart';

import 'components/menu_icons.dart';
import 'desktop_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final List<String> names = [
      'Mohammad',
      'Mahsa',
      'Jasmin',
      'Alex',
      'John',
      'Nargis',
      'Sahar',
      'Maryam',
      'Nusrin',
      'Jegar'
    ];
    final List<String> pictures = [
      'assets/images/Photo2.JPG',
      'assets/images/1.jpeg',
      'assets/images/2.jpeg',
      'assets/images/12.jpeg',
      'assets/images/122.jpeg',
      'assets/images/3.jpeg',
      'assets/images/1.jpeg',
      'assets/images/5.jpg',
      'assets/images/6.jpeg',
      'assets/images/6.jpg',
      'assets/images/pc.jpeg',
    ];
    final List<String> postPictures = [
      'assets/images/car2.jpeg',
      'assets/images/4.jpg',
      'assets/images/car1.jpeg',
      'assets/images/Iphone13.jpeg',
      'assets/images/mac2.jpeg',
      'assets/images/Mac.png',
      'assets/images/bag.jpeg',
      'assets/images/comput.jpeg',
      'assets/images/iphon.jpeg',
      'assets/images/pc.jpeg',
    ];

    return ResponsiveLayout(
      tablet: Container(
        child: Text('HI'),
      ),
      desktop: const DesktopLayout(),
      mobile: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const MenuIcons(),
        ),
        body: Column(
          children: [
            Container(
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return UserStory(
                      name: names[index],
                      imageUrl: pictures[index],
                    );
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: names.length,
                  itemBuilder: (context, index) {
                    return UserPost(
                      name: names[index],
                      imageUrl: pictures[index],
                      imagePost: postPictures[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
