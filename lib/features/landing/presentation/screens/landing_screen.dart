import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thhuang/core/utils/utils.dart';

import '../../../../core/constants.dart';
import '../../../../core/presentation/widget_animations.dart';

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
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(
                onPressed: () => print('pressed'),
                child: Text('blogs', style: buttonTextStyle),
              ),
              SizedBox(width: 10.0),
              RoundedButton(
                onPressed: () => print('pressed'),
                child: Text('projects', style: buttonTextStyle),
              ),
              SizedBox(width: 10.0),
              RoundedButton(
                onPressed: () => print('pressed'),
                child: Text('timeline', style: buttonTextStyle),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final void Function() onPressed;

  const RoundedButton({
    Key key,
    this.child,
    @required this.onPressed,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: child,
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: color, width: 1.2),
      ),
      hoverColor: Colors.white12,
    );
  }
}
