import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/favorites_screen.dart';
import 'package:nuvigator/next.dart';

class FavoritesRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return FavoritesScreen(
      onProducerClick: (parameters) => nuvigator.open(
        Routes.producerDetails,
        parameters: parameters,
      ),
    );
  }

  @override
  String get path => Routes.favorites;

  @override
  ScreenType get screenType => materialScreenType;
}
