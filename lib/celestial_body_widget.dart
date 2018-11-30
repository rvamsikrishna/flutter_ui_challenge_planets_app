import 'package:flutter/material.dart';

class CelestialBodyWidget extends StatelessWidget {
  final String imagePath;

  const CelestialBodyWidget(this.imagePath, {Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Colors.transparent,
            Colors.black45,
            Colors.black.withOpacity(0.65),
            Colors.black87,
            Colors.black
          ],
        ),
      ),
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
      ),
    );
  }
}
