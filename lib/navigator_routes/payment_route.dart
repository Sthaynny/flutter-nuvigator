import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
import 'package:flutter_nuvigator/screens/payment_screen.dart';
import 'package:nuvigator/next.dart';

class PaymentRoute extends NuRoute {
  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PaymentScreen();
  }

  @override
  String get path => Routes.payment;

  @override
  ScreenType get screenType => materialScreenType;
}
