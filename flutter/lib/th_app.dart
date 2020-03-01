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
          headline1: GoogleFonts.roboto(
            fontSize: 120.0,
            color: Colors.white,
          ),
          headline4: GoogleFonts.robotoMono(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            // letterSpacing: 0.8,
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
