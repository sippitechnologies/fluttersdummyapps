import 'package:animationapp/capturingimagefromcamera.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraApp extends StatelessWidget {
  CameraDescription cameraDescription;
  CameraApp(this.cameraDescription);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Capture Image from Camera",
      home: TakePictureScreen(
        camera: cameraDescription,
      ),
    );
  }
}
