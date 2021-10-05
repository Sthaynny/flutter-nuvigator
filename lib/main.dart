import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/router/router.dart';
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
      builder: Nuvigator(
        router: MyRouter(),
      ),
    );
  }
}
