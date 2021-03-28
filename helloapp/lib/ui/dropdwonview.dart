import 'package:flutter/material.dart';

class DropDownText extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DropDowmTextState();
  }
}

class DropDowmTextState extends State<DropDownText> {
  String selectedFruit = "Apple";
  List<String> fruitNames = [
    'Apple',
    "Banana",
    "Pine Apple",
    "Plum",
    "Orange",
    "Grapes",
    "Payapa",
    "Fig",
    "Straberry"
  ];
  @override
  Widget build(BuildContext buildContext) {
    return Column(children: [
      DropdownButton<String>(
        items: fruitNames
            .map((e) => DropdownMenuItem<String>(
                  child: Text(e),
                  value: e,
                ))
            .toList(),
        value: selectedFruit,
        onChanged: (value) => updateFruitName(value),
      ),
      Text(selectedFruit)
    ]);
  }

  void updateFruitName(value) {
    setState(() {
      selectedFruit = value;
    });
  }
}
