import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_xore/model.dart';
import 'package:flutter_xore/planet_widget.dart';

class PlanetSelector extends StatefulWidget {
  final List<Planet> planets;
  final int currentPlanetIndex;
  final Function onArrowClick;
  final VoidCallback onPlanetClicked;

  const PlanetSelector({
    Key key,
    this.planets,
    this.currentPlanetIndex,
    @required this.screenSize,
    this.onArrowClick,
    this.onPlanetClicked,
  }) : super(key: key);

  final Size screenSize;

  @override
  PlanetSelectorState createState() {
    return new PlanetSelectorState();
  }
}

class PlanetSelectorState extends State<PlanetSelector>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Tween<double> _rotationTween;

  @override
  initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(milliseconds: 500), vsync: this)
          ..addListener(() {
            setState(() {});
          });

    _rotationTween = Tween<double>(
      begin: 0.0,
      end: widget.currentPlanetIndex.toDouble(),
    );

    _controller.forward();
  }

  @override
  void didUpdateWidget(PlanetSelector oldWidget) {
    if (widget.currentPlanetIndex != oldWidget.currentPlanetIndex) {
      _rotationTween = Tween<double>(
        begin: _rotationTween.evaluate(_controller),
        end: widget.currentPlanetIndex.toDouble(),
      );

      _controller.forward(from: 0.0);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  dispose() {
    super.dispose();
  }

  //
  Widget _selectorRing() {
    return Container(
      width: _widgetHeight,
      height: _widgetHeight,
      alignment: Alignment.topCenter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 1.5,
        ),
      ),
      child: FadeTransition(
        opacity: _controller,
        child: GestureDetector(
          onTap: () {
            widget.onPlanetClicked();
          },
          child: Container(
            padding: const EdgeInsets.only(top: 40.0),
            decoration: BoxDecoration(
                border: Border(
              bottom: BorderSide(color: Colors.grey, width: 2.5),
            )),
            child: Text(
              '${widget.planets[widget.currentPlanetIndex].name.toUpperCase()}',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _leftArrowButton() {
    return Align(
      alignment: Alignment.topLeft,
      child: FractionalTranslation(
        translation: Offset(1.0, -0.5),
        child: IconButton(
          icon: Icon(
            Icons.chevron_left,
            size: 35.0,
          ),
          onPressed: widget.currentPlanetIndex == 0
              ? null
              : () {
                  widget.onArrowClick(ClickDirection.Left);
                },
        ),
      ),
    );
  }

  Widget _rightArrowButton() {
    return Align(
      alignment: Alignment.topRight,
      child: FractionalTranslation(
        translation: Offset(-1.0, -0.5),
        child: IconButton(
          icon: Icon(
            Icons.chevron_right,
            size: 35.0,
          ),
          onPressed: widget.currentPlanetIndex == planets.length - 1
              ? null
              : () {
                  widget.onArrowClick(ClickDirection.Right);
                },
        ),
      ),
    );
  }

  double get _widgetHeight => widget.screenSize.height * 0.4;

  @override
  Widget build(BuildContext context) {
    final List<Widget> stackChildren = [
      _leftArrowButton(),
      _selectorRing(),
      _rightArrowButton()
    ];

    for (int i = 0; i < widget.planets.length; i++) {
      final double radialOffset = _widgetHeight / 2;
      final double radianDiff = (2 * pi) / planets.length;
      final double rotationFactor = _rotationTween.animate(_controller).value;
      final double startRadian = -pi / 2 + -rotationFactor * radianDiff;
      final double radians = startRadian + i * radianDiff;
      final double dx = radialOffset * cos(radians);
      final double dy = radialOffset * sin(radians);

      stackChildren.add(
        Transform.translate(
          offset: Offset(dx, dy),
          child: PlanetWidget(
            planet: planets[i],
            currentlyInMainPos: i == widget.currentPlanetIndex,
          ),
        ),
      );
    }

    return Container(
      height: _widgetHeight,
      child: Stack(
        alignment: Alignment.center,
        children: stackChildren,
      ),
    );
  }
}

enum ClickDirection { Left, Right }
