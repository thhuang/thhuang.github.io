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
            fontFamily: 'Oxanium',
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          headline2: TextStyle(
            fontFamily: 'AnonymousPro',
            color: Colors.white,
          ),
          headline3: TextStyle(
            fontFamily: 'Alegreya',
            color: Colors.white,
          ),
          headline4: TextStyle(
            fontFamily: 'LibreBaskerville',
            color: Colors.white,
            fontStyle: FontStyle.italic,
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
