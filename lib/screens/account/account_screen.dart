import 'package:flutter/material.dart';
import 'package:instagram/widgets/grid_view_builder.dart';
import 'package:instagram/widgets/user_story.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List image = [
      'assets/images/1.jpg',
      'assets/images/2.jpeg',
      'assets/images/3.jpeg',
      'assets/images/4.jpeg',
      'assets/images/5.jpeg',
      'assets/images/6.jpeg',
      'assets/images/12.jpeg',
    ];
    final List list = [
      'Ali',
      'Sahar',
      'Nargis',
      'Shabnam',
      'Soraya',
      'Maryam',
      'Nusrin',
      'Angela',
    ];
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Photo2.JPG'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        activityStatus('324', 'Posts'),
                        activityStatus('32', 'Followers'),
                        activityStatus('422m', 'Following'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Mohammad',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text('Create apps & games'),
                  ),
                  InkWell(
                    onTap: () {
                      print('Tapped');
                    },
                    child: const Text(
                      'www.bazarhama.com',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(child: profileButtons('Edit Profile', () {})),
                  Expanded(child: profileButtons('Add Tools', () {})),
                  Expanded(child: profileButtons('Insights', () {})),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 110,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: image.length,
                  itemBuilder: (context, index) {
                    return UserStory(name: list[index], imageUrl: image[index]);
                  }),
            ),
            const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined),
                ),
                Tab(
                  icon: Icon(Icons.video_call),
                ),
                Tab(
                  icon: Icon(Icons.shop),
                ),
                Tab(
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  GridViewBuilder(container: Container(color: Colors.green)),
                  GridViewBuilder(container: Container(color: Colors.amber)),
                  GridViewBuilder(container: Container(color: Colors.pink)),
                  GridViewBuilder(
                      container: Container(color: Colors.deepOrange)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column activityStatus(String label1, String label2) {
    return Column(
      children: [
        Text(
          label1,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Text(label2)
      ],
    );
  }

  Padding profileButtons(String label, Function onTap) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () => onTap,
        child: Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(color: Colors.grey),
          ),
          child: Center(
            child: Text(label),
          ),
        ),
      ),
    );
  }
}
