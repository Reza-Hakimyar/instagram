import 'package:flutter/material.dart';

import 'constants.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile, tablet, desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileWidth) {
        return mobile;
      } else if (constraints.maxWidth >= mobileWidth &&
          constraints.maxWidth < tabletWidth) {
        return tablet;
      } else {
        return desktop;
      }
    });
  }
}
