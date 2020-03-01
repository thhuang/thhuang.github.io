import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String ID = '/profile';
  const ProfileScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Text(
              "Profile Screen",
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 150.0),
        ],
      ),
    );
  }
}
