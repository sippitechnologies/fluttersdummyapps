import 'package:flutter/material.dart';
import 'package:pizzaapp/ui/pizzaImageview.dart';

class PizzaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      color: Colors.amberAccent,
      child: PizzaImageView(),
    );
  }
}
