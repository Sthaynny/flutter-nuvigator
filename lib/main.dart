import 'package:flutter/material.dart';

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
      // builder: Nuvigator.routes(
      //   initialRoute: Routes.home,
      //   screenType: materialScreenType,
      //   routes: [
      //     NuRouteBuilder(
      //       path: Routes.home,
      //       builder: (_, __, ___) => HomeScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.login,
      //       builder: (_, __, ___) => LoginScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.singUp,
      //       builder: (_, __, ___) => SingupScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.favorites,
      //       builder: (_, __, ___) => FavoritesScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.profile,
      //       builder: (_, __, ___) => ProfileScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.payment,
      //       builder: (_, __, ___) => PaymentScreen(),
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.producerDetails,
      //       builder: (_, __, NuRouteSettings args) {
      //         final Producer producer = args.rawParameters[StringKeys.producer];
      //         return ProducerDetailsScreen(
      //           producer: producer,
      //         );
      //       },
      //     ),
      //     NuRouteBuilder(
      //       path: Routes.packageDetails,
      //       builder: (_, __, NuRouteSettings args) {
      //         final Producer producer = args.rawParameters[StringKeys.producer];
      //         final package = args.rawParameters[StringKeys.package];
      //         return PackageDetailsScreen(
      //           producer: producer,
      //           package: package,
      //         );
      //       },
      //     ),
      //   ],
      // ),
    );
  }
}
