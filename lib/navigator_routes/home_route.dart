import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/home_screen.dart';
import 'package:nuvigator/next.dart';

class HomeRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return HomeScreen(
      onProduceDatailsClick: (parameters) => nuvigator.open(
        Routes.producerDetails,
        parameters: parameters,
      ),
    );
  }

  @override
  String get path => Routes.home;

  @override
  ScreenType get screenType => materialScreenType;
}
