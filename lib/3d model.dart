import 'package:model_viewer/model_viewer.dart';
import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget {
  String url;
  MyApp1(this.url);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Avenir'
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Model Viewer")),
        body: ModelViewer(
          src: url,
          alt: "A 3D model of an astronaut",
          ar: true,
          autoRotate: true,
          cameraControls: true,
        ),
      ),
    );
  }
}