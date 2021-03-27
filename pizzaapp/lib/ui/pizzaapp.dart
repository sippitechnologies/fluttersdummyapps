import 'package:flutter/material.dart';
import 'package:pizzaapp/ui/pizzaappview.dart';

class PizzaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50),
      color: Colors.amberAccent,
      child: PizzaAppView(),
    );
  }
}
