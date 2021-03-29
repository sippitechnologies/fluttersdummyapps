import 'package:flutter/material.dart';
import 'package:fuelcalculator/ui/fuelcalculatorfield.dart';

class FuelCalView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FullCalViewState();
  }
}

class _FullCalViewState extends State<FuelCalView> {
  List<String> currencies = ["Dollars", "Ponds", "Euro"];
  String selectedCurrency = "Dollars";
  TextEditingController _distanceController = TextEditingController();
  TextEditingController _avgController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  String _result = "";
  void updateCurrency(String value) {
    setState(() {
      selectedCurrency = value;
    });
  }

  void updateResult() {
    int distance = int.parse(_distanceController.text);
    int consuptionAvg = int.parse(_avgController.text);
    int price = int.parse(_priceController.text);

    double calculatedPrice = distance / consuptionAvg * price;
    setState(() {
      _result = "Trip Cost $calculatedPrice $selectedCurrency";
    });
  }

  void resetForm() {
    setState(() {
      _distanceController.text = "";
      _avgController.text = "";
      _priceController.text = "";
      _result = "";
      selectedCurrency = "Dollars";
    });
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Fuel Calculator"),
        ),
        body: Column(
          children: [
            FuelCalCualatorField(_distanceController, "Distance", "eg 1,4,24",
                4, TextInputType.number),
            FuelCalCualatorField(
                _avgController,
                "Average Consumption Per Litre",
                "eg 1,4,24",
                4,
                TextInputType.number),
            FuelCalCualatorField(_priceController, "Fuel Price", "eg 1,4,24", 4,
                TextInputType.number),
            DropdownButton<String>(
                onChanged: (value) => updateCurrency(value),
                value: selectedCurrency,
                items: currencies
                    .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                              child: Text(value),
                              value: value,
                            ))
                    .toList()),
            Row(
              children: [
                RaisedButton(
                  onPressed: updateResult,
                  child: Text("Submit"),
                ),
                RaisedButton(
                  onPressed: resetForm,
                  child: Text("Reset"),
                )
              ],
            ),
            Text(_result)
          ],
        ));
  }
}
