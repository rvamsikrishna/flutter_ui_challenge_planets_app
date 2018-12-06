import 'package:flutter/material.dart';
import 'package:flutter_xore/celestial_body_widget.dart';
import 'package:flutter_xore/model.dart';

class PlanetDetailsPage extends StatefulWidget {
  final CelestialBody selected;

  const PlanetDetailsPage({Key key, this.selected}) : super(key: key);

  @override
  PlanetDetailsPageState createState() {
    return new PlanetDetailsPageState();
  }
}

class PlanetDetailsPageState extends State<PlanetDetailsPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  final List<Widget> _tabs = [
    Tab(
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey.shade100,
        child: Text('DISCOVER'),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey.shade100,
        child: Text('HISTORY'),
      ),
    ),
    Tab(
      child: Container(
        alignment: Alignment.center,
        color: Colors.grey.shade100,
        child: Text('IMAGES'),
      ),
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    print(screenSize.height);
    return Material(
      color: Colors.black,
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Positioned(
            left: 0.0,
            right: 0.0,
            child: Hero(
              tag: widget.selected.name,
              child: CelestialBodyWidget(widget.selected.vidAssetPath),
            ),
          ),
          Positioned(
            top: screenSize.height * 0.05,
            child: Hero(
              tag: '${widget.selected.name}heading',
              child: Text(
                widget.selected.name.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .subhead
                    .copyWith(color: Colors.white, letterSpacing: 10.0),
              ),
            ),
          ),
          Positioned(
            right: 0.0,
            left: 0.0,
            top: screenSize.height * 0.2,
            bottom: 0.0,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,
              child: InfoTabs(
                planet: widget.selected,
                tabController: _tabController,
                tabs: _tabs,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InfoTabs extends StatelessWidget {
  const InfoTabs({
    Key key,
    @required TabController tabController,
    @required List<Widget> tabs,
    @required this.planet,
  })  : _tabController = tabController,
        _tabs = tabs,
        super(key: key);

  final CelestialBody planet;
  final TabController _tabController;
  final List<Widget> _tabs;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar(
          controller: _tabController,
          tabs: _tabs,
          labelPadding: EdgeInsets.all(0.0),
          labelColor: Colors.grey.shade600,
          labelStyle: TextStyle(letterSpacing: 3.0),
          indicatorColor: Colors.grey.shade600,
          indicatorWeight: 4.0,
          indicatorSize: TabBarIndicatorSize.label,
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              _buildInfo(
                context,
                heading: planet.name,
                intro: planet.intro,
                subHeading: 'Formation',
                desc: planet.formation,
              ),
              _buildInfo(
                context,
                heading: 'History of ${planet.name}',
                intro: planet.intro,
                subHeading: 'Details',
                desc: planet.history,
              ),
              GridView.builder(
                itemCount: 10,
                padding: EdgeInsets.all(20.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.grey,
                  );
                },
              )
            ],
          ),
        ),
      ],
    );
  }

  ListView _buildInfo(BuildContext context,
      {String heading, String subHeading, String intro, String desc}) {
    return ListView(
      padding: EdgeInsets.all(25.0),
      children: <Widget>[
        Text(
          'The $heading',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          '$intro',
          style: TextStyle(height: 1.25),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Container(
                  width: 250.0,
                  // height: 50.0,
                  color: Colors.grey,
                ),
              );
            },
          ),
        ),
        Text(
          '$subHeading',
          style: Theme.of(context).textTheme.title,
        ),
        SizedBox(height: 30.0),
        Text(
          '$desc',
          style: TextStyle(height: 1.25),
        ),
      ],
    );
  }
}
