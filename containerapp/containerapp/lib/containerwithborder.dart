import 'package:flutter/material.dart';

class ContainerWithBorders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50))),
        ),
        Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(40))),
        ),
        Container(
            width: 200,
            height: 200,
            decoration:
                BoxDecoration(color: Colors.red, shape: BoxShape.circle))
      ],
    );
  }
}
