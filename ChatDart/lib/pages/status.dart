import 'package:flutter/material.dart';

class Status extends StatefulWidget {
  @override
  _StatusState createState() => new _StatusState();
}

class _StatusState extends State<Status>{
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(2.0),
      child: new Image.asset("assets/proximamente.png",width:250,height:50),
    );
  }
}