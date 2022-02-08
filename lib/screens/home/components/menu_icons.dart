import 'package:flutter/material.dart';

class MenuIcons extends StatelessWidget {
  const MenuIcons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Instagram'),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.share),
            ),
          ],
        ),
      ],
    );
  }
}
