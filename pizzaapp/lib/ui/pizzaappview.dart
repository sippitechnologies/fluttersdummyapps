import 'package:flutter/material.dart';
import 'package:pizzaapp/ui/orderbutton.dart';
import 'package:pizzaapp/ui/pizzaImageview.dart';
import 'package:pizzaapp/ui/pizzadescriptionview.dart';

class PizzaAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PizzaDescriptionView(
            "Margeta", "Tomato,Capsicum,Chilly,Onion,Chesse,Corn"),
        PizzaDescriptionView("Marinta", "Tomato Garlic"),
        PizzaImageView(),
        OrderButton()
      ],
    );
  }
}
