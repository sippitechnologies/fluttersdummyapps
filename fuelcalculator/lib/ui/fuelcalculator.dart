import 'dart:html';

import 'package:flutter/material.dart';

import 'apphome.dart';

class FuelCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      title: "Fuel Calculator",
      home: AppHome(),
    );
  }
}
