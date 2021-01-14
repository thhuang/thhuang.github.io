import 'dart:math';

import 'package:flutter/material.dart';
import 'package:thhuang/core/presentation/widget_animations.dart';

import '../../../../core/constants.dart';
import '../../../../core/presentation/responsive_layout.dart';
import '../../../../core/utils/utils.dart';

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
    return SlideRandomParticleBackground(
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 400.0,
              child: Text(
                'Tzu-Hsuan (TH) Huang',
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
