import 'package:flutter/material.dart';
import 'package:helloapp/ui/helloview.dart';

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello App'),
      ),
      body: HelloView(),
    );
  }
}
