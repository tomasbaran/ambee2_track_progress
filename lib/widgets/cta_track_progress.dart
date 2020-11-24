import 'package:flutter/material.dart';

class CTATrackProgress extends StatelessWidget {
  final Function onPressed;
  CTATrackProgress({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
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
