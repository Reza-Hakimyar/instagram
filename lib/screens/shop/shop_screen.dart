import 'package:flutter/material.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> postPictures = [
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
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('SHOP'),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_today_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search here',
                  border: InputBorder.none,
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                  padding: const EdgeInsets.only(top: 10),
                  itemCount: postPictures.length,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      childAspectRatio: 1.4 / 2,
                      maxCrossAxisExtent: 200,
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
            ),
          ],
        ),
      ),
    );
  }
}
