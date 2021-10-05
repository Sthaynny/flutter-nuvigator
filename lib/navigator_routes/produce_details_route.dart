import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/producer_details_screen.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';
import 'package:nuvigator/next.dart';

class ProducerDetailsRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return ProducerDetailsScreen(
      onPackageDetailsClick: (parameters) => nuvigator.open(
        Routes.packageDetails,
        parameters: parameters,
      ),
      producer: settings.rawParameters[StringKeys.producer],
    );
  }

  @override
  String get path => Routes.producerDetails;

  @override
  ScreenType get screenType => materialScreenType;
}
