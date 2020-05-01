import 'package:flutter/material.dart';

class Camera extends StatefulWidget {
  @override
  _CameraState createState() => new _CameraState();
}

class _CameraState extends State<Camera>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(2.0),
      child: new Image.asset("assets/proximamente.png",width:250,height:50),
    );
  }
}