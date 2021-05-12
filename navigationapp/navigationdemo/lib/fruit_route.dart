import 'package:flutter/material.dart';

class FruitRoute extends StatelessWidget {
  final String fruit;

  FruitRoute({@required this.fruit});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Example")),
      body: Container(
        decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(fruit), fit: BoxFit.cover)),
      ),
    );
  }
}
