import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class VerticalSliderDemo extends StatelessWidget {
  final List<Widget> _imageSliders;
  VerticalSliderDemo(this._imageSliders);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vertical sliding carousel demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: _imageSliders,
      )),
    );
  }
}
