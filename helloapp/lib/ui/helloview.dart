import 'package:flutter/material.dart';

class HelloView extends StatefulWidget {
  @override
  _HelloViewState createState() => _HelloViewState();
}

class _HelloViewState extends State<HelloView> {
  String label = "";

  void onLabelUpdate(String name) {
    setState(() {
      label = "${getTimelyGreeting()} ${name}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          textAlign: TextAlign.center,
          onChanged: (value) => onLabelUpdate(value),
        ),
        Text(label)
      ],
    );
  }

  String getTimelyGreeting() {
    DateTime now = DateTime.now();
    int hour = now.hour;
    if (hour < 12) {
      return "Good Morning";
    } else if (hour < 18) {
      return "Good Afternoon";
    } else {
      return "Good Night";
    }
  }
}
