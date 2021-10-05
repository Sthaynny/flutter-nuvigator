import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/models/producer_model.dart';
import 'package:flutter_nuvigator/router/router_generator.dart';
import 'package:flutter_nuvigator/screens/favorites_screen.dart';
import 'package:flutter_nuvigator/screens/home_screen.dart';
import 'package:flutter_nuvigator/screens/login_screen.dart';
import 'package:flutter_nuvigator/screens/package_details_screen.dart';
import 'package:flutter_nuvigator/screens/payment_screen.dart';
import 'package:flutter_nuvigator/screens/producer_details_screen.dart';
import 'package:flutter_nuvigator/screens/profile_screen.dart';
import 'package:flutter_nuvigator/screens/singup_screen.dart';
import 'package:flutter_nuvigator/utils/string_export.dart';
import 'package:nuvigator/next.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      // initialRoute: Routes.home,
      // onGenerateRoute: RouterGenerator.generateRoute,
      builder: Nuvigator.routes(
        initialRoute: Routes.home,
        screenType: materialScreenType,
        routes: [
          NuRouteBuilder(
            path: Routes.home,
            builder: (_, __, ___) => HomeScreen(),
          ),
          NuRouteBuilder(
            path: Routes.login,
            builder: (_, __, ___) => LoginScreen(),
          ),
          NuRouteBuilder(
            path: Routes.singUp,
            builder: (_, __, ___) => SingupScreen(),
          ),
          NuRouteBuilder(
            path: Routes.favorites,
            builder: (_, __, ___) => FavoritesScreen(),
          ),
          NuRouteBuilder(
            path: Routes.profile,
            builder: (_, __, ___) => ProfileScreen(),
          ),
          NuRouteBuilder(
            path: Routes.payment,
            builder: (_, __, ___) => PaymentScreen(),
          ),
          NuRouteBuilder(
            path: Routes.producerDetails,
            builder: (_, __, NuRouteSettings args) {
              final Producer producer = args.rawParameters[StringKeys.producer];
              return ProducerDetailsScreen(
                producer: producer,
              );
            },
          ),
          NuRouteBuilder(
            path: Routes.packageDetails,
            builder: (_, __, NuRouteSettings args) {
              final Producer producer = args.rawParameters[StringKeys.producer];
              final package = args.rawParameters[StringKeys.package];
              return PackageDetailsScreen(
                producer: producer,
                package: package,
              );
            },
          ),
        ],
      ),
    );
  }
}
