import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/page/astronaut.dart';
import 'app/model/model.dart';
import 'app/static/planet_name.dart';
import 'app/widgets/planet_selector.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final List<Planet> _planets = planets;
  int _currentPlanetIndex = 2;
  final StreamController _navigationStreamController =
      StreamController.broadcast();

  @override
  dispose() {
    _navigationStreamController.close();
    super.dispose();
  }

  _handleArrowClick(ClickDirection direction) {
    setState(() {
      switch (direction) {
        case ClickDirection.Left:
          _currentPlanetIndex--;
          break;
        case ClickDirection.Right:
          _currentPlanetIndex++;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionalTranslation(
              translation: const Offset(0.0, 0.65),
              child: PlanetSelector(
                screenSize: screenSize,
                planets: _planets,
                currentPlanetIndex: _currentPlanetIndex,
                onArrowClick: _handleArrowClick,
                onPlanetClicked: () =>
                    _navigationStreamController.sink.add(null),
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height * 0.8,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Container(
                      width: 400.0,
                      padding: const EdgeInsets.only(left: 50.0),
                      child: PlanetName(
                        name: _planets[_currentPlanetIndex].name!.toUpperCase(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Astronaut(
                    size: screenSize,
                    planets: _planets,
                    currentPlanetIndex: _currentPlanetIndex,
                    shouldNavigate: _navigationStreamController.stream,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
