import 'package:flutter/material.dart';

import 'features/landing/presentation/screens/landing_screen.dart';
import 'features/profile/presentation/screens/profile_screen.dart';

class THApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TH Huang',
      theme: theme.copyWith(
        backgroundColor: Colors.black87,
        scaffoldBackgroundColor: Colors.black87,
        textTheme: theme.textTheme.copyWith(
          headline1: TextStyle(
            fontFamily: 'lato',
            color: Colors.white,
            fontSize: 90.0,
            fontWeight: FontWeight.w400,
          ),
          headline2: TextStyle(
            fontFamily: 'pt serif',
            color: Colors.white,
            fontSize: 60.0,
          ),
          headline4: TextStyle(
            fontFamily: 'pt serif',
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
      initialRoute: LandingScreen.ID,
      routes: {
        LandingScreen.ID: (context) => LandingScreen(),
        ProfileScreen.ID: (context) => ProfileScreen(),
      },
      // home: LandingScreen(),
    );
  }
}
