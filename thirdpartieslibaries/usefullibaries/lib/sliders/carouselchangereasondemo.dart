import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselChangeReasonDemo extends StatefulWidget {
  final List<String> _imgList;
  final List<Widget> _imageSliders;
  CarouselChangeReasonDemo(this._imgList, this._imageSliders);
  @override
  State<StatefulWidget> createState() {
    return _CarouselChangeReasonDemoState(_imgList, _imageSliders);
  }
}

class _CarouselChangeReasonDemoState extends State<CarouselChangeReasonDemo> {
  String reason = '';
  final CarouselController _controller = CarouselController();
  final List<String> imgList;
  final List<Widget> imageSliders;
  _CarouselChangeReasonDemoState(this.imgList, this.imageSliders);

  void onPageChange(int index, CarouselPageChangedReason changeReason) {
    setState(() {
      reason = changeReason.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Change reason demo')),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CarouselSlider(
                items: imageSliders,
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  onPageChanged: onPageChange,
                  autoPlay: true,
                ),
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
                  ...Iterable<int>.generate(imgList.length).map(
                    (int pageIndex) => Flexible(
                      child: RaisedButton(
                        onPressed: () => _controller.animateToPage(pageIndex),
                        child: Text("$pageIndex"),
                      ),
                    ),
                  ),
                ],
              ),
              Center(
                child: Column(
                  children: [
                    Text('page change reason: '),
                    Text(reason),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
