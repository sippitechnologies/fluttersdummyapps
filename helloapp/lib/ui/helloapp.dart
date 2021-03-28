import 'package:flutter/material.dart';
import 'package:helloapp/ui/dropdwonview.dart';

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello App",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hello App'),
          ),
          body: DropDownText(),
        ));
  }
}
