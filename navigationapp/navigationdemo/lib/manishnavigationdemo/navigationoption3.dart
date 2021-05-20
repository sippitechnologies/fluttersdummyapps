import 'package:flutter/material.dart';

class NavigationOption3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyFirstPracticeApp"),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text("Drawer Header")),
              ListTile(
                  title: Text("List Tile"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("List2 Tile"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                  title: Text("List3 Tile"),
                  onTap: () {
                    Navigator.pop(context);
                  }),
              ListTile(
                title: Text("List4 Tile"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
