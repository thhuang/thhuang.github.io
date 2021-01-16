import 'dart:io';
import 'dart:math';

import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';

class SlideRandomParticleBackground extends StatefulWidget {
  final Color color;
  final Widget child;

  const SlideRandomParticleBackground({
    Key key,
    @required this.color,
    @required this.child,
  }) : super(key: key);

  @override
  _SlideRandomParticleBackgroundState createState() =>
      _SlideRandomParticleBackgroundState();
}

class _SlideRandomParticleBackgroundState
    extends State<SlideRandomParticleBackground> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final factor = (0.001 * 0.001) *
        MediaQuery.of(context).size.width *
        MediaQuery.of(context).size.height;
    return AnimatedBackground(
      behaviour: RandomParticleBehaviour(
        options: ParticleOptions(
          baseColor: widget.color,
          spawnMinRadius: 1.0,
          spawnMaxRadius: 2.5,
          spawnMinSpeed: 1.0,
          spawnMaxSpeed: 20.0,
          minOpacity: 0.1,
          maxOpacity: 0.7,
          opacityChangeRate: 0.5,
          particleCount: (150 * factor).round(),
        ),
      ),
      vsync: this,
      child: widget.child,
    );
  }
}

class FadeAnimation extends StatefulWidget {
  final Widget child;
  final int milliseconds;
  final int sleepMilliseconds;

  const FadeAnimation({
    Key key,
    this.child,
    this.sleepMilliseconds = 1000,
    this.milliseconds = 1000,
  }) : super(key: key);

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.milliseconds),
    );
    Future.delayed(
      Duration(milliseconds: widget.sleepMilliseconds),
      () => _animation.forward(),
    );
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      child: widget.child,
      builder: (BuildContext context, Widget _widget) {
        return FadeTransition(
          opacity: _animation,
          child: _widget,
        );
      },
    );
  }
}
