import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/profile_screen.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';
import 'package:nuvigator/next.dart';

class ProfileRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return ProfileScreen(
        onClose: () => nuvigator.pop(
            'Olá, eu sou um retorno de parametro! O nome e ${settings.rawParameters[StringKeys.name]}'));
  }

  @override
  String get path => Routes.profile;

  @override
  ScreenType get screenType => materialScreenType;
}
