import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router_generator.dart';

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
      initialRoute: Routes.home,
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
