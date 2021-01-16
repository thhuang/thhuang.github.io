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
