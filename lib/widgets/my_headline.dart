import 'package:flutter/material.dart';

class MyHeadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'headline',
      child: Center(
        child: Image.asset(
          'images/headline.png',
          width: 490,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
