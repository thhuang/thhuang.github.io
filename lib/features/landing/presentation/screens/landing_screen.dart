import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/presentation/widget_animations.dart';
import '../../../../core/utils/utils.dart';
import '../widgets/buttons.dart';

const double _contentWidth = 500;
const double _contentHeight = 280;

class LandingScreen extends StatelessWidget {
  static const String ID = '/';
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double widgetPadding =
        max(0.0, 0.5 * (screenHeight - _contentHeight));

    return Container(
      color: Theme.of(context).backgroundColor,
      child: SlideRandomParticleBackground(
        color: Colors.white,
        child: Center(
          child: FittedBox(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: _contentWidth,
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: widgetPadding),
                  child: SizedBox(height: _contentHeight, child: Content()),
                )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle =
        Theme.of(context).textTheme.headline1.copyWith(fontSize: 40.0);
    final subtitleTextStyle =
        Theme.of(context).textTheme.headline2.copyWith(fontSize: 20.0);
    final buttonTextStyle =
        Theme.of(context).textTheme.headline2.copyWith(fontSize: 16.0);

    return FadeAnimation(
      sleepMilliseconds: 1000,
      milliseconds: 2000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tzu-Hsuan (TH) Huang',
            textAlign: TextAlign.center,
            style: titleTextStyle,
          ),
          SizedBox(height: 30),
          Text(
            'Exploring the unknown unknowns',
            textAlign: TextAlign.center,
            style: subtitleTextStyle,
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageButton(
                onPressed: () => launchURL(GITHUB_URL),
                child: Image.asset(GITHUB_PATH, height: 50, width: 50),
              ),
              SizedBox(width: 10),
              ImageButton(
                onPressed: () => launchURL(LINKEDIN_URL),
                child: Image.asset(LINKEDIN_PATH, height: 50, width: 50),
              ),
            ],
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                onPressed: () => print('blogs button pressed'),
                child: Text('blogs', style: buttonTextStyle),
              ),
              SizedBox(width: 10.0),
              RoundedButton(
                onPressed: () => print('projects button pressed'),
                child: Text('projects', style: buttonTextStyle),
              ),
              SizedBox(width: 10.0),
              RoundedButton(
                onPressed: () => print('timeline button pressed'),
                child: Text('timeline', style: buttonTextStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
