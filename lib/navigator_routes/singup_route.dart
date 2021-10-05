import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/singup_screen.dart';
import 'package:nuvigator/next.dart';

class SingupRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return SingupScreen(
      onLoginClick: (parameters) => nuvigator.open(
        Routes.login,
      ),
    );
  }

  @override
  String get path => Routes.singUp;

  @override
  ScreenType get screenType => materialScreenType;
}
