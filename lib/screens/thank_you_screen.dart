import 'package:ambee2_track_progress/theme/style.dart';
import 'package:flutter/material.dart';
import 'package:ambee2_track_progress/widgets/my_footer.dart';
import 'package:ambee2_track_progress/widgets/my_headline.dart';

class ThankYouScreen extends StatelessWidget {
  final String email;
  ThankYouScreen({this.email});
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
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: sCTAMaxWidth),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'Awesome! \n\n\n\nWe will be sending updates on Ambee 2.0\'s progress to ',
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          TextSpan(
                            text: 'tomas@abc.com',
                            style: Theme.of(context).textTheme.bodyText1.copyWith(decoration: TextDecoration.underline),
                          ),
                        ]),
                      ),
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
