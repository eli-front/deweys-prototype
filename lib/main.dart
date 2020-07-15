import 'package:deweys_pizza/home.dart';
import 'package:flutter/material.dart';
import 'package:deweys_pizza/dewmore.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      Home.routName: (context) => Home(),
      Dewmore.routeName: (context) => Dewmore(),
    },
  ));
}