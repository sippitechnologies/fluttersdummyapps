import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
      color: Colors.greenAccent,
      onPressed: () {
        showAlertforPizza(context);
      },
      child: Text("Order Pizaa"),
      elevation: 20,
    ));
  }

  void showAlertforPizza(BuildContext buildContext) {
    AlertDialog alertDialog = AlertDialog(
      title: Text("Order is Placed"),
      content: Text("Thanks for your Order"),
    );

    showDialog(
        context: buildContext,
        builder: (BuildContext buildContext) {
          return alertDialog;
        });
  }
}
