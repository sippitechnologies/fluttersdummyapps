import 'package:flutter/material.dart';

class HelloViewWithTextControlled extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloViewWithTextControlled> {
  String label = "Hello";
  TextEditingController textEditingController;
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
          controller: textEditingController,
        ),
        Text(label)
      ],
    );
  }
}
