import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Column(
        children: [
          RaisedButton(
              onPressed: navigateToAnotherScreen,
              child: Text("Navigate To Screen Two")),
        ],
      ),
    );
  }

  void navigateToAnotherScreen() {}
}
