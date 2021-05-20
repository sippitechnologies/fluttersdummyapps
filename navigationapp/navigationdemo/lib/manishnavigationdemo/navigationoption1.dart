import 'package:flutter/material.dart';

class NavigationOption1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
          actions: [
            IconButton(
              icon: Icon(Icons.add_a_photo),
              onPressed: () {
                debugPrint("Add Icon Click");
              },
            ),
            IconButton(
              icon: Icon(Icons.add_alarm),
              onPressed: () {
                debugPrint("Add alarm Click");
              },
            ),
            IconButton(
              icon: Icon(Icons.add_box),
              onPressed: () {
                debugPrint("Add Box Click");
              },
            ),
            IconButton(
              icon: Icon(Icons.backpack),
              onPressed: () {
                debugPrint("Add Navigation Click");
              },
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
