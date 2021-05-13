import 'package:flutter/material.dart';
import 'package:navigationdemo/screen1.dart';

class AstroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Asto App",
      home: AstroHome(),
    );
  }
}

class AstroHome extends StatefulWidget {
  @override
  _AstroHomeState createState() => _AstroHomeState();
}

class _AstroHomeState extends State<AstroHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Astro App"),
      ),
      body: Column(
        children: [
          RaisedButton(
              onPressed: navigatetoAnother, child: Text("Navigate to Screen1")),
        ],
      ),
    );
  }

  void navigatetoAnother() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Screen1()));
  }
}
