import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      headline1: TextStyle(
        color: Colors.pink,
        fontWeight: FontWeight.w900,
        fontSize: 72,
        //fontFamily: 'Avenir',
      ),
      subtitle1: TextStyle(
        color: Colors.green,
        fontSize: 28,
      ),
      button: TextStyle(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
