import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/login_screen.dart';
import 'package:nuvigator/next.dart';

class LoginRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return LoginScreen(
      onSingUpClick: (parameters) => nuvigator.open(
        Routes.singUp,
        parameters: parameters,
      ),
      onHomeClick: nuvigator.open(Routes.home),
    );
  }

  @override
  String get path => Routes.login;

  @override
  ScreenType get screenType => materialScreenType;
}
