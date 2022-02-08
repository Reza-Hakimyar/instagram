import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({Key? key, required this.container}) : super(key: key);
  final Widget container;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: container,
          );
        });
  }
}
