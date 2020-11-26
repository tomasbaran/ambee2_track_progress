import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/widgets/cta_track_progress.dart';
import 'package:ambee2_track_progress/widgets/my_footer.dart';
import 'package:ambee2_track_progress/widgets/my_headline.dart';
import 'package:ambee2_track_progress/widgets/input_email_textfield.dart';
import 'package:ambee2_track_progress/services/mailer_lite_api.dart';

class InputEmailScreen extends StatelessWidget {
  addSubscriber(String email) => MailerLiteApi().addSubscriber(email);

  String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
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
                          onChanged: (value) {
                            email = value;
                            print(email);
                          },
                          onEditingComplete: () {
                            print('onEditingComplete: $email');
                            addSubscriber(email);
                          },
                          onSubmitted: (value) => addSubscriber(email),
                        ),
                        SizedBox(height: 32),
                        CTATrackProgress(
                          onPressed: () async {
                            try {
                              await addSubscriber(email);
                              return Navigator.pushNamed(context, '/thank_you', arguments: {'email': 'preposielam@abc.sk'});
                            } catch (e) {
                              print(e);
                            }
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
