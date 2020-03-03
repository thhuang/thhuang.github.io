import 'package:flutter/material.dart';
import 'package:thhuang/core/constants.dart';

class LandingScreen extends StatelessWidget {
  static const String ID = '/';
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        largeBody: LargeBody(),
        miniBody: MiniBody(),
      ),
    );
  }
}

class MiniBody extends StatelessWidget {
  const MiniBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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

class LargeBody extends StatelessWidget {
  const LargeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 600.0,
                  child: FittedBox(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 4.5),
                          child: Text(
                            'CREATION &',
                            textAlign: TextAlign.left,
                            style: Theme.of(context).textTheme.headline1,
                          ),
                        ),
                        Text(
                          'REALIZATION',
                          textAlign: TextAlign.left,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 600.0,
                  child: FittedBox(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.5, right: 16.0),
                      child: Text(
                        'is my lifestyle, as a software developer',
                        textAlign: TextAlign.left,
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            AvatarAndName(),
          ]),
        )
      ],
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
        ClipRRect(
          borderRadius: BorderRadius.circular(40.0),
          child: SizedBox(
            height: 80.0,
            width: 80.0,
            child: Image.asset(
              AVATAR_PATH,
              width: 80.0,
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Text(
          'Tzu-Hsuan\nHuang',
          textAlign: TextAlign.left,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  final Widget largeBody;
  final Widget mediumBody;
  final Widget smallBody;
  final Widget miniBody;
  final double largeBreakPoint;
  final double mediumBreakPoint;
  final double smallBreakPoint;

  const ResponsiveLayout({
    Key key,
    @required this.largeBody,
    this.mediumBody,
    this.smallBody,
    this.miniBody,
    this.largeBreakPoint = 1199.98,
    this.mediumBreakPoint = 991.98,
    this.smallBreakPoint = 767.98,
  })  : assert(largeBody != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width > largeBreakPoint) {
      print('largeBody');
      return largeBody;
    } else if (width > mediumBreakPoint) {
      print('mediumBody');
      return mediumBody ?? largeBody;
    } else if (width > smallBreakPoint) {
      print('smallBody');
      return smallBody ?? mediumBody ?? largeBody;
    } else {
      print('miniBody');
      return miniBody ?? smallBody ?? mediumBody ?? largeBody;
    }
  }
}
