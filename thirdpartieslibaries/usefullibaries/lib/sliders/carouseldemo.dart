import 'package:flutter/material.dart';
import 'package:usefullibaries/main.dart';
import 'package:usefullibaries/sliders/prefecthimagedemo.dart';
import 'package:usefullibaries/sliders/verticalsliderdemo.dart';
import 'basic.dart';
import 'carosehomedemo.dart';
import 'carouselchangereasondemo.dart';
import 'carousewithindicator.dart';
import 'complicated_image_demo.dart';
import 'enlargedemo.dart';
import 'fullscreen_slider.dart';
import 'imagesliderdemo.dart';
import 'keeppageviewpositiondemo.dart';
import 'manualcontroller.dart';
import 'multipleitemdemo.dart';
import 'nocenterdemo.dart';
import 'noonloopingdemo.dart';
import 'ondemand.dart';

class CarouselDemo extends StatelessWidget {
  final List<String> _imgList;
  CarouselDemo(this._imgList);
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    children: <Widget>[
                      Image.network(item, fit: BoxFit.cover, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          child: Text(
                            'No. ${imgList.indexOf(item)} image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ))
      .toList();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (ctx) => CarouselDemoHome(),
      '/basic': (ctx) => BasicDemo(),
      '/nocenter': (ctx) => NoCenterDemo(),
      '/image': (ctx) => ImageSliderDemo(imgList),
      '/complicated': (ctx) => ComplicatedImageDemo(imageSliders),
      '/enlarge': (ctx) => EnlargeStrategyDemo(imageSliders),
      '/manual': (ctx) => ManuallyControlledSlider(imageSliders),
      '/noloop': (ctx) => NoonLoopingDemo(imageSliders),
      '/vertical': (ctx) => VerticalSliderDemo(imageSliders),
      '/fullscreen': (ctx) => FullscreenSliderDemo(imgList),
      '/ondemand': (ctx) => OnDemandCarouselDemo(),
      '/indicator': (ctx) => CarouselWithIndicatorDemo(imgList, imageSliders),
      '/prefetch': (ctx) => PrefetchImageDemo(),
      '/reason': (ctx) => CarouselChangeReasonDemo(imgList, imageSliders),
      '/position': (ctx) => KeepPageviewPositionDemo(imageSliders),
      '/multiple': (ctx) => MultipleItemDemo(imgList),
    });
  }
}
