import 'package:flutter/material.dart';

class HelloViewWithTextControlled extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloViewWithTextControlled> {
  String label = "Hello";
  TextEditingController textEditingController;
  void onLabelUpdate() {
    setState(() {
      label = textEditingController.text;
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
        RaisedButton(
          onPressed: onLabelUpdate,
          child: Text("Update Label"),
        ),
        Text(label)
      ],
    );
  }
}
