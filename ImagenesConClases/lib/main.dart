import 'package:appimagen/widgets.dart';
import 'package:flutter/material.dart';

void main(){
  var app = MaterialApp(
    home:  Scaffold(
      appBar: AppBar(
        title: Text("Oso Perez 🐻")
      ),
      body: Container(
            child: new MiImagen()        
      ),
    )
  );

  runApp(app);
}