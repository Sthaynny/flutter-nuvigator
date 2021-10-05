import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/routes.dart';
import 'package:flutter_nuvigator/screens/profile_screen.dart';
import 'package:nuvigator/next.dart';

class ProfileRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return ProfileScreen();
  }

  @override
  String get path => Routes.profile;

  @override
  ScreenType get screenType => materialScreenType;
}
