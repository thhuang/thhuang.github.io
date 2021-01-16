import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thhuang/core/utils/utils.dart';

import '../../../../core/constants.dart';
import '../../../../core/presentation/widget_animations.dart';

const double _contentWidth = 500;
const double _contentHeight = 200;

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
    return FadeAnimation(
      sleepMilliseconds: 1000,
      milliseconds: 2000,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Tzu-Hsuan (TH) Huang',
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.headline1.copyWith(fontSize: 40.0),
          ),
          SizedBox(height: 30),
          Text(
            'Exploring the unknown unknowns',
            textAlign: TextAlign.center,
            style:
                Theme.of(context).textTheme.headline2.copyWith(fontSize: 20.0),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => launchURL(GITHUB_URL),
                child: Image.asset(GITHUB_PATH, height: 50, width: 50),
              ),
              SizedBox(width: 10),
              GestureDetector(
                onTap: () => launchURL(LINKEDIN_URL),
                child: Image.asset(LINKEDIN_PATH, height: 50, width: 50),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
