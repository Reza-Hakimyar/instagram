import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';

class UserPost extends StatelessWidget {
  const UserPost({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.imagePost,
  }) : super(key: key);
  final String name, imageUrl, imagePost;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                      image: DecorationImage(
                        image: AssetImage(imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            letterSpacing: -0.1),
                      ),
                      Text(
                        '34min ago',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu_outlined),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 0),
          height: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imagePost),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.ios_share),
                ),
              ],
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.bookmark_border_outlined),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text('Mohammad ', style: boldText),
              Text(' and '),
              Text('others', style: boldText),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(text: 'Mohammad ', style: boldText),
                TextSpan(
                    text:
                        'I like this car but the only problem at the moment it is expensive for me but in the future will be like toy, any time I want, I\'ll buy it.'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
