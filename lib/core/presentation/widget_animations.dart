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
    return AnimatedBackground(
      behaviour: RandomParticleBehaviour(
        options: ParticleOptions(
          baseColor: widget.color,
          spawnMinRadius: 1.0,
          spawnMaxRadius: 10.0,
          spawnMinSpeed: 10.0,
          spawnMaxSpeed: 50.0,
          particleCount: 200,
        ),
      ),
      vsync: this,
      child: widget.child,
    );
  }
}
