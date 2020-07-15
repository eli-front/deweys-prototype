import 'package:flutter/material.dart';
import 'package:deweys_pizza/dewmore.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      Home.routeName: (context) => Home(),
    },
  ));
}