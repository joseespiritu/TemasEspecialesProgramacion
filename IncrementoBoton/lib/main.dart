import "package:flutter/material.dart";

main() => runApp(MiWidget2());

class MiWidget2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State<MiWidget2>{
  int i=0;
  double interes = 0;
  double inversion = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Incremento Inversión'),
            ) 
        ),
        body: Center(
          child: Text('El sueldo actual del mes $i es de: ' + inversion.toStringAsFixed(2))
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
                setState(() {
                  inversion=inversion+interes;
                  interes=inversion/2;
                  i+=6;
                });
          },
        ),
      )
    );
  }
}

