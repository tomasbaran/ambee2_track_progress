import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/theme/style.dart';

class CTATrackProgress extends StatelessWidget {
  final Function onPressed;
  CTATrackProgress({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'cta',
      child: FlatButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: sCTAMaxWidth),
          child: Container(
            height: 90,
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width <= 320 ? 48 : 52),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  'TRACK PROGRESS',
                  style: Theme.of(context).textTheme.button.copyWith(fontSize: MediaQuery.of(context).size.width <= 320 ? 16 : null),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
