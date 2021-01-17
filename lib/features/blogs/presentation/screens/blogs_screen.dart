import 'package:flutter/material.dart';

import '../../../landing/presentation/screens/landing_screen.dart';
import '../../../landing/presentation/widgets/buttons.dart';

class BlogsScreen extends StatelessWidget {
  static const String ID = '/blogs';
  const BlogsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleTextStyle = Theme.of(context).textTheme.headline1.copyWith(fontSize: 40.0);
    final subtitleTextStyle = Theme.of(context).textTheme.headline2.copyWith(fontSize: 20.0);
    final buttonTextStyle = Theme.of(context).textTheme.button;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Blogs", textAlign: TextAlign.center, style: titleTextStyle),
            SizedBox(height: 10.0),
            Text('Currently under construction...', textAlign: TextAlign.center, style: subtitleTextStyle),
            SizedBox(height: 30.0),
            RoundedButton(
              onPressed: () => Navigator.pushNamed(context, LandingScreen.ID),
              child: Text('home', style: buttonTextStyle),
            ),
          ],
        ),
      ),
    );
  }
}
