import 'package:flutter/material.dart';
import 'package:chat/models/chat_model.dart';
import 'package:chat/pages/chat_list.dart';
import 'package:chat/pages/add_contact.dart';
import 'package:chat/pages/new_contact.dart';

class Contacts extends StatefulWidget{
  @override
  _ContactsState createState() => new _ContactsState();
}

class _ContactsState extends State<Contacts>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Seleccionar contactos"),
        actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return addContact.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: new ListView.builder(
        itemCount: messageData.length,
        itemBuilder: (context, i) => new Column(
          children: <Widget>[
            new Divider(
              height: 10.0,
            ),
            new ListTile(
              leading: new CircleAvatar(
                backgroundImage: NetworkImage(messageData[i].imageUrl),
              ),
              title: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Text(messageData[i].name,
                      style: new TextStyle(fontWeight:  FontWeight.bold)),
                ],
              ),
              subtitle: new Container(
                padding: const EdgeInsets.only(top: 5.0),
                child: new Text(
                  "Información del contacto",
                  style: new TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
              ),
              onTap: (){
                var route = new MaterialPageRoute(
                    builder: (BuildContext context) => new ChatScreen(name: messageData[i].name)
                );
                Navigator.of(context).push(route);
              },
            ),
          ],
        ),
      ),
    );
  }

  void choiceAction (String choice){
    if(choice == addContact.acerca){
      return _showDialog();
    }else if(choice == addContact.add_contact){
      var route = new MaterialPageRoute(
          builder: (BuildContext context) => new NewContact()
      );
      Navigator.of(context).push(route);
    }
  }

  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Mi Flutter Chat"),
          content: new Text("Creditos: José Luis Espíritu"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Cerrar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

}