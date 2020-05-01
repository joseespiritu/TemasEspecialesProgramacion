import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart';

class MiImagen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    var assetsImage = new AssetImage('assets/perez.jpg');
    var image = new Image(image: assetsImage, width: 500.0, height: 500.0);
    return new Container(child: image);
  }
}