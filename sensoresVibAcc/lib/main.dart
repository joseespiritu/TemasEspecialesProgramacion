import 'package:flutter/material.dart';
import 'package:sensors/sensors.dart';
import 'package:vibration/vibration.dart';
main() => runApp(Controles());

class Controles extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Estado();
  }
}

class Estado extends State {

  String mensaje ='';
  AccelerometerEvent acelerometro;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Center (
              child: Text("Posicion"),
            )
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Inclinacion frente: ${acelerometro.z.round()}'),
                Text('Inclinacion lados: ${acelerometro.x.round()}'),
                Text('$mensaje')
              ],
            ),
          )
        ),
    );
  }

  @override
  void initState(){
    super.initState();
    accelerometerEvents.listen(
      (AccelerometerEvent cambio){
        setState(() {
          acelerometro = cambio;
          if (acelerometro.x.round() > 3){
            Vibration.vibrate(intensities: [1, 20]);
            mensaje = 'No inclines el telefono mucho hacia la izquierda';
          } else if (acelerometro.x.round() < -3){
            Vibration.vibrate(intensities: [1, 20]);
            mensaje = 'No inclines el telefono mucho hacia la derecha';
          } else if (acelerometro.z.round() < -2){
            Vibration.vibrate(intensities: [1, 20]);
            mensaje = 'No inclines el telefono mucho hacia atras';
          } else {
            mensaje = 'El telefono se encuentra estable';
          }
        });
      }
    );
  }

}