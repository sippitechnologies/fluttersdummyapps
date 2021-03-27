import 'package:flutter/material.dart';

class PizzaDescriptionView extends StatelessWidget {
  String _pizzaName;
  String _ingredient;
  PizzaDescriptionView(this._pizzaName, this._ingredient);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            _pizzaName,
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Text(
            _ingredient,
            style: TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }
}
