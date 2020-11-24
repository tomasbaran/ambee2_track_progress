import 'package:flutter/material.dart';

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
                    CTATrackProgress(),
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

class CTATrackProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () => null,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 28, horizontal: MediaQuery.of(context).size.width <= 320 ? 48 : 52),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.white, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Text(
          'TRACK PROGRESS',
          style: Theme.of(context).textTheme.button.copyWith(fontSize: MediaQuery.of(context).size.width <= 320 ? 16 : null),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class MyHeadline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        'images/headline.png',
        width: 490,
        fit: BoxFit.contain,
      ),
    );
  }
}

class MyFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
