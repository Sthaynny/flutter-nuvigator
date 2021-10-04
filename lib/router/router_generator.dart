import 'package:flutter/material.dart';
import 'package:proj/core/app_colors.dart';
import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';
import 'package:proj/screens/favorites_screen.dart';
import 'package:proj/screens/home_screen.dart';
import 'package:proj/screens/login_screen.dart';
import 'package:proj/screens/package_details_screen.dart';
import 'package:proj/screens/payment_screen.dart';
import 'package:proj/screens/producer_details_screen.dart';
import 'package:proj/screens/profile_screen.dart';
import 'package:proj/screens/singup_screen.dart';

class Routes {
  static const String home = 'home';
  static const String login = 'login';
  static const String singUp = 'sing-up';
  static const String favorites = 'favorites';
  static const String profile = 'profile';
  static const String payment = 'payment';
  static const String producerDetails = 'producer-details';
  static const String packageDetails = 'package-details';
}

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
        break;
      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.singUp:
        return MaterialPageRoute(
          builder: (_) => SingupScreen(),
        );
      case Routes.favorites:
        return MaterialPageRoute(
          builder: (_) => FavoritesScreen(),
        );
        break;
      case Routes.profile:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
        break;
      case Routes.payment:
        return MaterialPageRoute(
          builder: (_) => PaymentScreen(),
        );
      case Routes.producerDetails:
        if (args is Producer) {
          return MaterialPageRoute(
            builder: (_) => ProducerDetailsScreen(
              producer: args,
            ),
          );
        }
        return _errorRouter();
        break;

      case Routes.packageDetails:
        if (args is Package) {
          return MaterialPageRoute(
            builder: (_) => PackageDetailsScreen(
              package: args,
              producer: null,
            ),
          );
        }
        return _errorRouter();
        break;
      default:
        return _errorRouter();
    }
  }
}

Route _errorRouter() {
  return MaterialPageRoute(
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.green,
          title: Text('Error'),
        ),
        body: Center(child: Text('Error')),
      );
    },
  );
}
