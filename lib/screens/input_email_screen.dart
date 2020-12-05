import 'package:ambee2_track_progress/services/my_node_api.dart';
import 'package:ambee2_track_progress/services/validate_email.dart';
import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/widgets/cta_track_progress.dart';
import 'package:ambee2_track_progress/widgets/my_footer.dart';
import 'package:ambee2_track_progress/widgets/my_headline.dart';
import 'package:ambee2_track_progress/widgets/input_email_textfield.dart';

class InputEmailScreen extends StatelessWidget {
  String email = '';

  void sendEmailAndFinish(BuildContext context, String email) async {
    try {
      ValidateEmail().test(email);
      await MyNodeApi().addSubscriber(email);
      Navigator.pushNamed(context, '/thank_you', arguments: {'email': 'preposielam@abc.sk'});
    } catch (e) {
      print(e);
    }
  }

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
                flex: 2,
                child: MyHeadline(),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InputEmailTextfield(
                          onChanged: (value) => email = value,
                          onEditingComplete: () {
                            sendEmailAndFinish(context, email);
                          },
                          onSubmitted: (input) {
                            sendEmailAndFinish(context, email);
                          },
                        ),
                        SizedBox(height: 32),
                        CTATrackProgress(
                          onPressed: () {
                            sendEmailAndFinish(context, email);
                          },
                        ),
                      ],
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
