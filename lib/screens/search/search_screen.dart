import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> postPictures = [
      'assets/images/car2.jpeg',
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey),
          ),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                hintText: 'Search here'),
          ),
        ),
      ),
      body: GridView.builder(
          padding: const EdgeInsets.only(top: 10),
          itemCount: postPictures.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 1.4 / 2,
              maxCrossAxisExtent: 150,
              mainAxisSpacing: 1,
              crossAxisSpacing: 1),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                image: DecorationImage(
                  image: AssetImage(postPictures[index]),
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}
