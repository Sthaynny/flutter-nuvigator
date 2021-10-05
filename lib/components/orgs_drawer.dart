import 'package:flutter/material.dart';
import 'package:flutter_nuvigator/screens/menu_screen.dart';

class OrgsDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(child: MenuScreen());
  }
}
