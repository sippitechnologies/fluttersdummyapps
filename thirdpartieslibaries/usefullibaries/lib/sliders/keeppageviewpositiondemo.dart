import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class KeepPageviewPositionDemo extends StatelessWidget {
  final List<Widget> _imageSliders;
  KeepPageviewPositionDemo(this._imageSliders);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Keep pageview position demo')),
      body: ListView.builder(itemBuilder: (ctx, index) {
        if (index == 3) {
          return Container(
              child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 2.0,
              enlargeCenterPage: true,
              pageViewKey: PageStorageKey<String>('carousel_slider'),
            ),
            items: _imageSliders,
          ));
        } else {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            color: Colors.blue,
            height: 200,
            child: Center(
              child: Text('other content'),
            ),
          );
        }
      }),
    );
  }
}
