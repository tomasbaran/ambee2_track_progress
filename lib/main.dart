import 'package:ambee2_track_progress/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(TrackProgressApp());
}

class TrackProgressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme().dark,
      home: WelcomeScreen(),
    );
  }
}
