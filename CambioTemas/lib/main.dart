import "package:flutter/material.dart";

void main() => runApp(ChangueTheme());

class ChangueTheme extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<ChangueTheme>{
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: temaActual,
      home: Scaffold(
        appBar: encabezado,
        floatingActionButton: FloatingActionButton(
          child: Text(textoActual),
          onPressed: (){
            setState(() {
              if (i==0){
                temaActual=temaDark;
                textoActual='Light';
                i=1;
              }else {
                temaActual=temaClaro;
                textoActual='Dark';
                i=0;
              }
            });
          },
        )
        )
    );
  }
}


var encabezado = AppBar(
  title: Center(
    child: Text('Cambio de tema'),
  ),
);

var textoActual = 'Dark';

var temaActual = temaClaro;
var temaClaro = ThemeData.light();
var temaDark = ThemeData.dark();