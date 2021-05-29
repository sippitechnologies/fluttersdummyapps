import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int tapCount = 0;
  int doubleTapCount = 0;
  int longPressCount = 0;
  double posX = 0.0;
  double posY = 0.0;
  double boxSize = 0.0;
  double fullBoxSize = 150.0;
  AnimationController animationController;
  Animation<double> animation;

  void center(BuildContext context) {
    posX = (MediaQuery.of(context).size.width / 2) - boxSize / 2;
    posY = (MediaQuery.of(context).size.height / 2) - boxSize / 2 - 30.0;
    setState(() {
      posX = posX;
      posY = posY;
    });
  }

  @override
  void initState() {
    debugPrint("initState is Called");
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 5000), vsync: this);
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);
    animation.addListener(() {
      setState(() {
        boxSize = fullBoxSize * animation.value;
      });
      center(context);
    });
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (posX == 0.0) {
      center(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GestureDetector(
        onVerticalDragUpdate: (DragUpdateDetails details) {
          setState(() {
            double deltay = details.delta.dy;
            posY += deltay;
          });
        },
        onHorizontalDragUpdate: (DragUpdateDetails details) {
          setState(() {
            double deltax = details.delta.dx;
            posX += deltax;
          });
        },
        onTap: () {
          setState(() {
            tapCount++;
          });
        },
        onDoubleTap: () {
          setState(() {
            doubleTapCount++;
          });
        },
        onLongPress: () {
          setState(() {
            longPressCount++;
          });
        },
        child: Stack(
          children: <Widget>[
            Positioned(
                left: posX,
                top: posY,
                child: Container(
                  height: boxSize,
                  width: boxSize,
                  decoration: BoxDecoration(color: Colors.red),
                ))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(15),
        child: Material(
          color: Theme.of(context).primaryColorLight,
          child: Text(
              "Taps $tapCount Double Taps $doubleTapCount Long Press $longPressCount"),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
