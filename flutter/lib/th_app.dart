import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        scaffoldBackgroundColor: Colors.black87,
        textTheme: theme.textTheme.copyWith(
          headline1: GoogleFonts.lato(
            fontSize: 90.0,
            color: Colors.white,
          ),
          headline2: GoogleFonts.robotoSlab(
            fontSize: 60.0,
            color: Colors.white,
          ),
          headline4: GoogleFonts.robotoSlab(
            fontSize: 15.0,
            color: Colors.white,
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
