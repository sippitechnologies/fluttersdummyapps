import 'package:containerapp/containerwithborder.dart';
import "package:flutter/material.dart";
//import 'containerhome.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Container App",
      home: ContainerWithBorders(),
      
    );
  }
}
