import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  _CallsState createState() => new _CallsState();
}

class _CallsState extends State<Calls>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(2.0),
      child: new Image.asset("assets/proximamente.png",width:250,height:50),
    );
  }
}