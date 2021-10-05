import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/models/package_model.dart';
import 'package:flutter_nuvigator/models/producer_model.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/package_details_screen.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';
import 'package:nuvigator/next.dart';

class PackageDatailsArgs {
  final Producer producer;
  final Package packege;

  PackageDatailsArgs({
    @required this.producer,
    @required this.packege,
  });

  static PackageDatailsArgs fromJson(Map<String, dynamic> json) {
    return PackageDatailsArgs(
      packege: json[StringKeys.package],
      producer: json[StringKeys.producer],
    );
  }
}

class PackageDetailsRoute
    extends NuRoute<NuRouter, PackageDatailsArgs, String> {
  @override
  Widget build(
      BuildContext context, NuRouteSettings<PackageDatailsArgs> settings) {
    return PackageDetailsScreen(
      package: settings.args.packege,
      producer: settings.args.producer,
    );
  }

  @override
  ParamsParser<PackageDatailsArgs> get paramsParser =>
      PackageDatailsArgs.fromJson;

  @override
  String get path => Routes.packageDetails;

  @override
  ScreenType get screenType => materialScreenType;
}
