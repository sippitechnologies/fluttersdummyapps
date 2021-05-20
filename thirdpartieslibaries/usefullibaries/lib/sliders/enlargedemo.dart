import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class EnlargeStrategyDemo extends StatelessWidget {
  final List<Widget> _imageSliders;

  EnlargeStrategyDemo(this._imageSliders);
  @override
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
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: _imageSliders,
          ),
        ],
      )),
    );
  }
}
