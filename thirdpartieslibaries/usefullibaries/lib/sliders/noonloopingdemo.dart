import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NoonLoopingDemo extends StatelessWidget {
  final List<Widget> _imageSliders;
  NoonLoopingDemo(this._imageSliders);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Noon-looping carousel demo')),
      body: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          enableInfiniteScroll: false,
          initialPage: 2,
          autoPlay: true,
        ),
        items: _imageSliders,
      )),
    );
  }
}
