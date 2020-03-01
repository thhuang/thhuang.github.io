import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  static const String ID = '/';
  const LandingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: AutoSizeText(
                "Hello! I'am @thhuang",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
                maxLines: 1,
                minFontSize: 5.0,
                maxFontSize: 80.0,
              ),
            ),
          ),
          SizedBox(height: 150.0),
        ],
      ),
    );
  }
}
