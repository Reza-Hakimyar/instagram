import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  const UserStory({
    Key? key,
    required this.name,
    required this.imageUrl,
  }) : super(key: key);
  final String name;
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(name),
        ],
      ),
    );
  }
}
