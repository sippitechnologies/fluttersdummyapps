import 'package:flutter/material.dart';
import 'package:navigationdemo/screen1.dart';

class AstroAppPused extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Asto App",
      routes: {
        '/': (context) => AstroHome(),
        "/second": (context) => Screen1()
      },
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
        actions: [
          IconButton(
              icon: const Icon(Icons.add_alert),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              }),
          IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("This is Snackbar")));
              })
        ],
        automaticallyImplyLeading: false,
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
    Navigator.pushNamed(context, '/second');
  }
}
