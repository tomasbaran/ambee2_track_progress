import 'package:flutter/material.dart';

class MyTheme {
  ThemeData dark = ThemeData(
    //backgroundColor: Colors.black,
    highlightColor: Colors.transparent,
    splashColor: Colors.transparent,
    fontFamily: 'Avenir',
    canvasColor: Colors.black,
    accentColor: Colors.white,
    primaryColor: Colors.white,
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
      button: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
      bodyText1: TextStyle(
        color: Colors.white,
        decoration: TextDecoration.none,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.3,
      ),
    ),
  );
}
