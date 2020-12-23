import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/theme/style.dart';

class InputEmailTextfield extends StatelessWidget {
  final Function onEditingComplete;
  final Function onSubmitted;
  final Function onChanged;

  InputEmailTextfield({this.onEditingComplete, this.onSubmitted, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'input_email_textfield',
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: sCTAMaxWidth),
        child: Container(
          height: 90,
          padding: EdgeInsets.symmetric(horizontal: 24),
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Center(
            child: Card(
              color: Colors.transparent,
              child: TextField(
                textCapitalization: TextCapitalization.none,
                cursorColor: Colors.grey.shade600,
                style: tsInputEmail,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  hintText: 'Your email',
                  hintStyle: tsInputEmailHint,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
                onEditingComplete: onEditingComplete,
                onChanged: onChanged,
                onSubmitted: onSubmitted,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
