import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Pizza",
      style: normalwithNoDecoration(),
    );
  }

  TextStyle boldwithConbineDecoration() {
    return TextStyle(
        decoration: TextDecoration.combine(
            [TextDecoration.lineThrough, TextDecoration.overline]),
        fontSize: 80.0,
        fontFamily: "Oxygen",
        fontWeight: FontWeight.w700);
  }

  TextStyle lightwithNoDecoration() {
    return TextStyle(
        decoration: TextDecoration.none,
        fontSize: 80.0,
        fontFamily: "Oxygen",
        fontWeight: FontWeight.w300);
  }

  TextStyle normalwithNoDecoration() {
    return TextStyle(
        decoration: TextDecoration.none,
        fontSize: 80.0,
        fontFamily: "Oxygen",
        fontWeight: FontWeight.normal);
  }
}
