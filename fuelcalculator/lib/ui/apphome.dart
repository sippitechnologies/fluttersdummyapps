import 'package:flutter/material.dart';

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fuel Calcualtor"),
      ),
      body: FuelCalView(),
    );
  }
}
