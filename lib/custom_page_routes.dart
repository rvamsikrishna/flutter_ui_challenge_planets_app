import 'package:flutter/material.dart';

class MyPageRoute extends MaterialPageRoute {
  final Duration transDuation;
  MyPageRoute({
    this.transDuation = const Duration(milliseconds: 1000),
    WidgetBuilder builder,
    RouteSettings settings,
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
  Duration get transitionDuration => transDuation;
}
