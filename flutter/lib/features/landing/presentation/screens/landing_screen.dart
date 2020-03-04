import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/constants.dart';
import '../../../../core/presentation/responsive_layout.dart';

class LandingScreen extends StatelessWidget {
  static const String ID = '/';
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            ResponsiveLayout(
              largeChild: HeadlineLarge(),
              miniChild: HeadlineMini(),
            ),
          ]),
        ),
      ],
    );
  }
}

class HeadlineMini extends StatelessWidget {
  const HeadlineMini({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FittedBox(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'Hello! I\'m @thhuang',
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HeadlineLarge extends StatelessWidget {
  HeadlineLarge({Key key}) : super(key: key);

  final titleMaxWidth = 800.0;
  final titleMinWidth = 569.0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final titleWidth = clip(
      width / 2,
      minimum: titleMinWidth,
      maximum: titleMaxWidth,
    );
    final subtitleWordSpacing = 1.0 + 10.0 * titleWidth / titleMaxWidth;
    return Column(
      children: <Widget>[
        SizedBox(height: 0.15 * height),
        SizedBox(
          height: max(0.35 * height, 300),
          child: Column(
            children: <Widget>[
              TitleLarge(
                titleWidth: titleWidth,
              ),
              SizedBox(height: 10.0),
              SubtitleLarge(
                titleWidth: titleWidth,
                subtitleWordSpacing: subtitleWordSpacing,
              ),
            ],
          ),
        ),
        SizedBox(height: 0.1 * height),
        AvatarLarge(),
      ],
    );
  }
}

class TitleLarge extends StatelessWidget {
  const TitleLarge({
    Key key,
    @required this.titleWidth,
  }) : super(key: key);

  final double titleWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: titleWidth,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 4.5),
                    child: Text(
                      'CREATION &',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  FittedBox(
                    child: Text(
                      'REALIZATION',
                      textAlign: TextAlign.left,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SubtitleLarge extends StatelessWidget {
  const SubtitleLarge({
    Key key,
    @required this.titleWidth,
    @required this.subtitleWordSpacing,
  }) : super(key: key);

  final double titleWidth;
  final double subtitleWordSpacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: titleWidth,
          child: FittedBox(
            child: Padding(
              padding: EdgeInsets.only(left: 11.5, right: 13.5),
              child: Text(
                'is my lifestyle, as a software developer',
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.headline2.copyWith(
                      wordSpacing: subtitleWordSpacing,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AvatarLarge extends StatelessWidget {
  const AvatarLarge({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 200.0,
          child: Text(
            'Tzu-Hsuan (TH) Huang',
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        SizedBox(width: 30.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(45.0),
          child: SizedBox(
            height: 90.0,
            width: 90.0,
            child: Image.asset(
              AVATAR_PATH,
            ),
          ),
        ),
        SizedBox(width: 30.0),
        SizedBox(
          width: 200.0,
          child: Text(
            'Flutter | Go | Robotics',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
      ],
    );
  }
}

double clip(
  double number, {
  @required double minimum,
  @required double maximum,
}) {
  return min(max(number, minimum), maximum);
}
