import 'dart:html';

import 'package:flutter/material.dart';

class FuelCalView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FullCalViewState();
  }
}

class _FullCalViewState extends State<FuelCalView> {
  List<String> currencies = ["Dollars", "Ponds", "Euro"];
  String selectedCurrency= "Dollars";
  TextEditingController distanceController= TextEditingController();
  TextEditingController avgController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String result = "";
  
  @override
  Widget build(BuildContext buildContext)
  {
      return Column(
        children: [
          TextField(controller: distanceController,keyboardType:TextInputType.number,decoration: InputDecoration(labelText: "Distance",hintText: "eg 1,4,24",border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),),
          TextField(controller: distanceController,keyboardType:TextInputType.number,decoration: InputDecoration(labelText: "Average Consumption Per Litre",hintText: "eg 1,4,24",border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),),
          TextField(controller: distanceController,keyboardType:TextInputType.number,decoration: InputDecoration(labelText: "Fuel Price",hintText: "eg 1,4,24",border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),)
        ],

      )
  }
}
