import 'package:flutter/material.dart';

class AffiliatedLogo extends StatelessWidget {
  final double height;
  AffiliatedLogo(this.height);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/img/mentes_que_pensam_logo.jpg',
      height: height,
    );
  }
}
