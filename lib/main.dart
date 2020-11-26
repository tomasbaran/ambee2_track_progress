import 'package:ambee2_track_progress/screens/thank_you_screen.dart';
import 'package:ambee2_track_progress/theme/my_theme.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/input_email_screen.dart';

void main() {
  runApp(TrackProgressApp());
}

class TrackProgressApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme().dark,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => WelcomeScreen(),
        '/input_email': (context) => InputEmailScreen(),
        '/thank_you': (context) => ThankYouScreen(),
      },
    );
  }
}
