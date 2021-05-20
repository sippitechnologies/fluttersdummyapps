import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_options.dart';

class ManuallyControlledSlider extends StatefulWidget {
  final List<Widget> _imageSliders;
  ManuallyControlledSlider(this._imageSliders);
  @override
  State<StatefulWidget> createState() {
    return _ManuallyControlledSliderState(_imageSliders);
  }
}

class _ManuallyControlledSliderState extends State<ManuallyControlledSlider> {
  final CarouselController _controller = CarouselController();
  final List<Widget> _imageSliders;
  _ManuallyControlledSliderState(this._imageSliders);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Manually controlled slider')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: _imageSliders,
                options: CarouselOptions(enlargeCenterPage: true, height: 200),
                carouselController: _controller,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    child: RaisedButton(
                      onPressed: () => _controller.previousPage(),
                      child: Text('←'),
                    ),
                  ),
                  Flexible(
                    child: RaisedButton(
                      onPressed: () => _controller.nextPage(),
                      child: Text('→'),
                    ),
                  ),
                  ...Iterable<int>.generate(_imageSliders.length).map(
                    (int pageIndex) => Flexible(
                      child: RaisedButton(
                        onPressed: () => _controller.animateToPage(pageIndex),
                        child: Text("$pageIndex"),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
