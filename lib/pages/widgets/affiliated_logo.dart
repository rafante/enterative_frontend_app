import 'package:flutter/material.dart';

class AffiliatedLogo extends StatelessWidget {
  final String imgPath;
  final double height;
  AffiliatedLogo({required this.imgPath, required this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/${getPath()}.jpg',
      height: height,
    );
  }

  String getPath() {
    return imgPath.replaceAll('/', '');
  }
}
