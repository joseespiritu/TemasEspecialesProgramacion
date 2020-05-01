import 'package:flutter/material.dart';
import 'package:chat/pages/contacts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final bd=Firestore.instance;

class NewContact extends StatefulWidget{
  @override
  _NewContactState createState() => new _NewContactState();
}

class _NewContactState extends State<NewContact>{
  String nombreNuevoContacto = '';

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Nuevo Contacto"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              new Container(
                margin: EdgeInsets.only(bottom: 15.0),
                child: Center(
                  child: Text("Ingresa información del nuevo contacto", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),),
                ),
              ),
              new Container(
                padding: new EdgeInsets.all(5.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    hintText: "Ingrese nombre",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8)
                    ),
                  ),
                  onChanged: (nombre_nuevo_contacto){
                    setState(() {
                      nombreNuevoContacto = nombre_nuevo_contacto;
                    });
                  },
                ),
              ),
              new Container(
                child: Center(
                  child: RaisedButton(
                    child: Text("Aceptar"),
                    color: new Color(0xff25D366),
                    onPressed: (){
                      bd.collection("contactos").add({'nombre':nombreNuevoContacto});
                    },
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}
