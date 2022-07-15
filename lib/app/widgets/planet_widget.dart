import 'dart:math';

import 'package:flutter/material.dart';
import '../model/model.dart';

class PlanetWidget extends StatefulWidget {
  final Planet? planet;
  final bool currentlyInMainPos;

  const PlanetWidget({Key? key, this.planet, this.currentlyInMainPos = false})
      : super(key: key);
  @override
  _PlanetWidgetState createState() => _PlanetWidgetState();
}

class _PlanetWidgetState extends State<PlanetWidget>
    with TickerProviderStateMixin {
  final double constDiameter = 25.0;
  final double moonOrbitRadius = 20.0;
  late AnimationController _rotationController;
  late AnimationController _moonOrbitLengthController;
  late Animation<double> _moonOrbitLength;

  @override
  void initState() {
    super.initState();
    _rotationController =
        AnimationController(duration: const Duration(seconds: 4), vsync: this,);
    if (hasMoons) {
      _rotationController.repeat();
    }

    _moonOrbitLengthController =
        AnimationController(duration: const Duration(milliseconds: 700), vsync: this,)
          ..addListener(() {
            setState(() {});
          });
    _moonOrbitLength = Tween<double>(begin: 0.0, end: moonOrbitRadius)
        .animate(_moonOrbitLengthController);
    _moonOrbitLengthController.forward();
  }

  @override
  void didUpdateWidget(PlanetWidget oldWidget) {
    if (widget.currentlyInMainPos != oldWidget.currentlyInMainPos) {
      _moonOrbitLengthController.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  dispose() {
    _rotationController.dispose();
    super.dispose();
  }

  bool get hasMoons => widget.planet!.moons.isNotEmpty;

  Widget _buildCelestialBody({required CelestialBody body}) {
    return Center(
      child: Container(
        width: body.diameter! * constDiameter,
        height: body.diameter! * constDiameter,
        decoration: BoxDecoration(
          color: body.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Planet planet = widget.planet!;
    final List<Moon> moons = planet.moons;

    final List<Widget> bodies = [_buildCelestialBody(body: planet)];

    if (moons.isNotEmpty && widget.currentlyInMainPos) {
      for (int i = 0; i < moons.length; i++) {
        final double radians = (2 * pi / moons.length) * i;
        final double dx = _moonOrbitLength.value * cos(radians);
        final double dy = _moonOrbitLength.value * sin(radians);

        bodies.add(
          Transform.translate(
            offset: Offset(dx, dy),
            child: _buildCelestialBody(body: moons[i]),
          ),
        );
      }
    }

    return RotationTransition(
      turns: _rotationController,
      child: SizedBox(
        width: 100.0,
        height: 100.0,
        child: Stack(
          clipBehavior: Clip.none,
          children: bodies,
        ),
      ),
    );
  }
}
