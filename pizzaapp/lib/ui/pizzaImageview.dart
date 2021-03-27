import 'package:flutter/material.dart';

class PizzaImageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage("images/pizza1.png");
    return Container(
      padding: EdgeInsets.all(50),
      child: Image(
        image: assetImage,
        height: 200,
        width: 200,
      ),
    );
  }
}
