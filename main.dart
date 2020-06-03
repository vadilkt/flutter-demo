import 'package:design/accueil.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color.fromRGBO(255, 201, 49, 1),
      accentColor: Color.fromRGBO(254, 135, 19, 1),
    ),
    home: Accueil(),
  ));
}
