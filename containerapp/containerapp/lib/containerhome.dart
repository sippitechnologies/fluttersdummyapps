import 'package:flutter/material.dart';

class ContainerHome extends StatefulWidget {
  @override
  _ContainerHomeState createState() => _ContainerHomeState();
}
//Container with child takes the size of their child
//Container will take full size of the parent if its is bound container
//Container will take the mamium size of container if is unbound container

class _ContainerHomeState extends State<ContainerHome> {
  var shapes = ["Rectangle", "Circle"];
  var defaultShape = "Rectangle";
  BoxShape getShape(String value) {
    switch (value) {
      case "Rectangle":
        return BoxShape.rectangle;
      case "Circle":
        return BoxShape.circle;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(children: [
          Container(
            width: 400,
            height: 40,
            decoration:
                BoxDecoration(color: Colors.red, shape: getShape(defaultShape)),
          ),
          DropdownButton(
            onChanged: (value) {
              setState(() {
                defaultShape = value;
              });
            },
            value: defaultShape,
            items: shapes.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem(
                child: Text(value),
                value: value,
              );
            }).toList(),
          ),
        ]));
  }
}
