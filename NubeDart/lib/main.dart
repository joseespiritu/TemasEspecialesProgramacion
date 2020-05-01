import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final bd=Firestore.instance;

void main() => runApp(Nube());

class Nube extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Estado();
  }
}

class Estado extends State{

  final txtMensaje = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Servicios en la nube'),
        ),
        body:
          Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    labelText: 'Escribe un mensaje',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16)
                  )
                ),
                controller: txtMensaje,
              ),
              RaisedButton(
                child: Text('Eliminar'),
                onPressed: (){
                  eliminar();
                },
              ),
              RaisedButton(
                child: Text('Actualizar'),
                onPressed: (){
                  actualizar();
                },
              ),
            ],
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.message),
          onPressed: (){
            insertar(txtMensaje.text);
          },
        ),
      ),
    );
  }
}

void insertar(String mensaje) async{
  await bd.collection("whatsapp").add({'mensaje': mensaje});
}

void eliminar() async{
  await bd.collection("whatsapp").document('-LuKm0vGYoMRW63224kd').delete();
}

void actualizar() async{
  await bd.collection("whatsapp").document('-LuKidSAFa3ta0EG0PV_').updateData({'mensaje': 'Mensaje Actualizado'});
}