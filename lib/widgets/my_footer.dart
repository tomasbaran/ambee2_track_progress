import 'package:flutter/material.dart';

class MyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'footer',
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            'images/apple_logo.png',
            height: 32,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 32),
          Image.asset(
            'images/google_play_logo.png',
            height: 28,
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
