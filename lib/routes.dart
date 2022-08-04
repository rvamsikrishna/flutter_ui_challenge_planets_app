import 'package:flutter/material.dart';

class MyPageRoute extends MaterialPageRoute {
  final Duration transDuration;
  MyPageRoute({
    this.transDuration = const Duration(milliseconds: 1000),
    required WidgetBuilder builder,
    RouteSettings? settings,
  }) : super(builder: builder, settings: settings);

  // @override
  // Widget buildTransitions(BuildContext context, Animation<double> animation,
  //     Animation<double> secondaryAnimation, Widget child) {
  //   opacity: animation,
  //   // alignment: Alignment.center,
  //   child: child,
  // );
  // }

  @override
  Duration get transitionDuration => transDuration;
}
