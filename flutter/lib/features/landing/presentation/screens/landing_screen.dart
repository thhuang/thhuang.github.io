import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const String ID = '/';
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          width: 600.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LandingTitle(),
              SizedBox(height: 10.0),
              LandingSubtitle(),
              SizedBox(height: 80),
              AvatarAndName(),
            ],
          ),
        ),
      ),
    );
  }
}

class AvatarAndName extends StatelessWidget {
  const AvatarAndName({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage('assets/images/avatar.jpg'),
        ),
        SizedBox(width: 10.0),
        Text(
          'TH\nHuang',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline4.copyWith(
                fontSize: 15.0,
              ),
        ),
      ],
    );
  }
}

class LandingTitle extends StatelessWidget {
  const LandingTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Text(
        'CREATION &\nREALIZATION',
        textAlign: TextAlign.left,
        style: Theme.of(context).textTheme.headline1.copyWith(
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}

class LandingSubtitle extends StatelessWidget {
  const LandingSubtitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 13.5, right: 20.0),
        child: Text(
          'is my lifestyle, as a software developer',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
