import 'package:flutter/material.dart';

void main(){
  var app = MaterialApp(
    home:  Scaffold(
      appBar: AppBar(
        title: Text("Oso Perezoso 🐻")
      ),
      body: Container(
            child: Center(
               child: new Image.asset("assets/perez.jpg",width:300,height:300),
            ),
      ),
    )
  );
  runApp(app);
}