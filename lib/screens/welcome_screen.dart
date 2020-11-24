import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/widgets/cta_track_progress.dart';
import 'package:ambee2_track_progress/widgets/my_footer.dart';
import 'package:ambee2_track_progress/widgets/my_headline.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: MyHeadline(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CTATrackProgress(
                      onPressed: () {
                        Navigator.pushNamed(context, '/input_email');
                      },
                    ),
                    MyFooter(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}