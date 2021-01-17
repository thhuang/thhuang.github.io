import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/presentation/route_animations.dart';
import 'features/blogs/presentation/screens/blogs_screen.dart';
import 'features/landing/presentation/screens/landing_screen.dart';
import 'features/projects/presentation/screens/projects_screen.dart';
import 'features/timeline/presentation/screens/timeline_screen.dart';

class THApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = ThemeData.dark();
    Route _onGenerateRoute(RouteSettings settings) {
      print(settings);
      switch (settings.name) {
        case LandingScreen.ID:
          return AnimatedRoute.build(nextScreen: LandingScreen());
        case BlogsScreen.ID:
          return AnimatedRoute.build(nextScreen: BlogsScreen());
        case ProjectsScreen.ID:
          return AnimatedRoute.build(nextScreen: ProjectsScreen());
        case TimelineScreen.ID:
          return AnimatedRoute.build(nextScreen: TimelineScreen());
        default:
          return AnimatedRoute.build(nextScreen: LandingScreen());
      }
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TH Huang',
      theme: theme.copyWith(
        backgroundColor: Color(0xFF222222),
        scaffoldBackgroundColor: Color(0xFF222222),
        textTheme: theme.textTheme.copyWith(
          headline1: TextStyle(fontFamily: 'Oxanium', color: Colors.white, fontWeight: FontWeight.w500),
          headline2: TextStyle(fontFamily: 'AnonymousPro', color: Colors.white),
          headline3: TextStyle(fontFamily: 'Alegreya', color: Colors.white),
          headline4: TextStyle(fontFamily: 'LibreBaskerville', color: Colors.white, fontStyle: FontStyle.italic),
          button: TextStyle(fontFamily: 'AnonymousPro', color: Colors.white, fontSize: 16.0),
        ),
      ),
      initialRoute: LandingScreen.ID,
      onGenerateRoute: _onGenerateRoute,
      // home: LandingScreen(),
    );
  }
}
