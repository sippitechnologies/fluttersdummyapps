import 'package:flutter/material.dart';
import 'package:fuelcalculator/ui/fuelcalview.dart';

class FuelCalCulatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fuel Calculator",
      home: FuelCalView(),
    );
  }
}
