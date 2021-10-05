import 'package:flutter_nuvigator/navigator_routes/favorites_routes.dart';
import 'package:flutter_nuvigator/navigator_routes/home_route.dart';
import 'package:flutter_nuvigator/navigator_routes/login_route.dart';
import 'package:flutter_nuvigator/navigator_routes/package_details_route.dart';
import 'package:flutter_nuvigator/navigator_routes/payment_route.dart';
import 'package:flutter_nuvigator/navigator_routes/produce_details_route.dart';
import 'package:flutter_nuvigator/navigator_routes/profile_route.dart';
import 'package:flutter_nuvigator/navigator_routes/singup_route.dart';
import 'package:nuvigator/next.dart';

abstract class Routes {
  static const String home = 'home';
  static const String login = 'login';
  static const String singUp = 'sing-up';
  static const String favorites = 'favorites';
  static const String profile = 'profile';
  static const String payment = 'payment';
  static const String producerDetails = 'producer-details';
  static const String packageDetails = 'package-details';
}

class MyRouter extends NuRouter {
  @override
  String get initialRoute => Routes.home;

  @override
  List<NuRoute> get registerRoutes => [
        HomeRoute(),
        FavoritesRoute(),
        LoginRoute(),
        PackageDetailsRoute(),
        PaymentRoute(),
        ProducerDetailsRoute(),
        ProfileRoute(),
        SingupRoute(),
      ];
}
