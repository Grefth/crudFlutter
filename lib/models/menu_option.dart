import 'package:flutter/material.dart' show IconData, Widget;
import 'package:flutter_app/screens/screens.dart';

class MenuOption {
  final String    route;
  final IconData?  icon;
  final String?    nombre;
  final Widget    screen;

  MenuOption({
     required this.route,
      this.icon,
      this.nombre,
     required this.screen
  });



}