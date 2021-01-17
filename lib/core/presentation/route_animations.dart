import 'package:flutter/widgets.dart';

enum AnimatedRouteType {
  fade,
  scale,
  enterExit,
}

class AnimatedRoute extends PageRouteBuilder {
  final Widget currentScreen;
  final Widget nextScreen;

  static AnimatedRoute build({
    AnimatedRouteType type,
    Widget currentScreen,
    @required Widget nextScreen,
  }) {
    switch (type) {
      case AnimatedRouteType.fade:
        return AnimatedRoute._fade(
          currentScreen: currentScreen,
          nextScreen: nextScreen,
        );
      case AnimatedRouteType.scale:
        return AnimatedRoute._scale(
          currentScreen: currentScreen,
          nextScreen: nextScreen,
        );
      case AnimatedRouteType.enterExit:
        return AnimatedRoute._enterExit(
          currentScreen: currentScreen,
          nextScreen: nextScreen,
        );
      default:
        return AnimatedRoute._fade(
          currentScreen: currentScreen,
          nextScreen: nextScreen,
        );
    }
  }

  AnimatedRoute._fade({
    this.currentScreen,
    @required this.nextScreen,
  })  : assert(nextScreen != null),
        super(
          pageBuilder: (_, __, ___) => nextScreen,
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );

  AnimatedRoute._enterExit({
    @required this.currentScreen,
    @required this.nextScreen,
  })  : assert(currentScreen != null),
        assert(nextScreen != null),
        super(
          pageBuilder: (_, __, ___) => nextScreen,
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return Stack(children: <Widget>[
              SlideTransition(
                position: Tween<Offset>(begin: Offset(0.0, 0.0), end: Offset(-1.0, 0.0)).animate(animation),
                child: currentScreen,
              ),
              SlideTransition(
                position: Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero).animate(animation),
                child: nextScreen,
              )
            ]);
          },
        );

  AnimatedRoute._scale({
    this.currentScreen,
    @required this.nextScreen,
  })  : assert(nextScreen != null),
        super(
          pageBuilder: (_, __, ___) => nextScreen,
          transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
            return ScaleTransition(
              scale: Tween<double>(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(parent: animation, curve: Curves.fastOutSlowIn),
              ),
              child: child,
            );
          },
        );
}
