import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ComplicatedImageDemo extends StatelessWidget {
  final List<Widget> _imageSliders;

  ComplicatedImageDemo(this._imageSliders);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Complicated image slider demo')),
      body: Container(
          child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
            items: _imageSliders,
          ),
        ],
      )),
    );
  }
}
