import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  String label = "Hello";

  void onLabelUpdate(String name) {
    setState(() {
      label = "Hello ${name}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.center,
          onChanged: (value) => onLabelUpdate(value),
        ),
        Text(label)
      ],
    );
  }
}
