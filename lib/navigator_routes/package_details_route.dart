import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/package_details_screen.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';
import 'package:nuvigator/next.dart';

class PackageDetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PackageDetailsScreen(
      package: settings.rawParameters[StringKeys.package],
      producer: settings.rawParameters[StringKeys.producer],
    );
  }

  @override
  String get path => Routes.packageDetails;

  @override
  ScreenType get screenType => materialScreenType;
}
