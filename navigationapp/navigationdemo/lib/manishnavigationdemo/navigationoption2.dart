import 'package:flutter/material.dart';

class NavigationOption2 extends StatelessWidget {
  List<String> option = ["Add", "Delete", "Update", "Execute"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
          actions: [
            PopupMenuButton(
              itemBuilder: (manish) {
                return option
                    .map((e) => PopupMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList();
              },
              onSelected: (value) => debugPrint(value),
            )
          ],
        ),
        body: (ListView(
          children: [
            Text("Second Screen"),
            RaisedButton(onPressed: () {
              Navigator.pop(context);
            })
          ],
        )));
  }
}
