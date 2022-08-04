// ignore: library_prefixes
import 'dart:math' as Math;

import 'package:flutter/material.dart';

class PlanetName extends StatefulWidget {
  final String? name;

  const PlanetName({Key? key, this.name}) : super(key: key);

  @override
  PlanetNameState createState() {
    return PlanetNameState();
  }
}

class PlanetNameState extends State<PlanetName> with TickerProviderStateMixin {
  static const List<String> alphabets = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'X',
    'Y',
    'Z'
  ];
  List<Map<String, dynamic>> textChars = <Map<String, dynamic>>[];

  @override
  void initState() {
    super.initState();
    _setUpControllers(widget.name!.split(''), widget.name!.split(''));
  }

  @override
  void didUpdateWidget(PlanetName oldWidget) {
    if (widget.name != oldWidget.name) {
      int min;
      if (oldWidget.name!.length != widget.name!.length) {
        min = Math.min(oldWidget.name!.length, widget.name!.length);
      } else {
        min = oldWidget.name!.length;
      }
      final List<String> oldTextChars = [
        ...oldWidget.name!.substring(0, min).split('')
      ];
      final List<String> newTextChars = [
        ...widget.name!.substring(0, min).split('')
      ];

      _cleanUpControllers();
      _setUpControllers(newTextChars, oldTextChars);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _cleanUpControllers();
    super.dispose();
  }

  void _setUpControllers(List<String> newLetters, List<String> oldLetters) {
    for (int i = 0; i < newLetters.length; i++) {
      AnimationController controller = AnimationController(
        duration: const Duration(milliseconds: 1000),
        vsync: this,
      )..addListener(() {
          setState(() {});
        });

      StepTween tween = StepTween(
        begin: alphabets.indexOf(oldLetters[i]),
        end: alphabets.indexOf(newLetters[i]),
      );

      textChars.add({'controller': controller, 'tween': tween});
      controller.forward();
    }
  }

  void _cleanUpControllers() {
    for (var f in textChars) {
      f['controller'].dispose();
    }
    textChars = [];
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        style: Theme.of(context).textTheme.headline2!.copyWith(
              letterSpacing: 10.0,
              fontWeight: FontWeight.w200,
              fontSize: 85.0,
              color: Colors.grey.shade400,
            ),
        children: textChars.isEmpty
            ? []
            : textChars.map((Map<String, dynamic> f) {
                final i = f['tween'].animate(f['controller']).value;
                return TextSpan(
                  text: alphabets[i],
                );
              }).toList(),
      ),
    );
  }
}
