import 'package:animationapp/animationdemo.dart';
import 'package:animationapp/cameraapp.dart';
import 'package:animationapp/capturingimagefromcamera.dart';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final camera = await availableCameras();
  final firstCamera = camera.first;
  runApp(CameraApp(
    firstCamera,
  ));
}
