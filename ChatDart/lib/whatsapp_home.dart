import 'package:flutter/material.dart';
import 'package:chat/pages/menu_inicio.dart';
import 'package:chat/pages/calls.dart';
import 'package:chat/pages/status.dart';
import 'package:chat/pages/camera.dart';
import 'package:chat/pages/chat_screen.dart';
import 'package:chat/pages/contacts.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('FlutterChat'),
        actions: <Widget>[
          Icon(Icons.search, color: Colors.white),
          PopupMenuButton<String>(
            onSelected: choiceAction,
            itemBuilder: (BuildContext context){
              return MenuInicio.choices.map((String choice){
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        bottom: new TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: 'CHATS'),
            new Tab(text: 'ESTADOS'),
            new Tab(text: 'LLAMADAS'),
          ],
        ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Status(),
          new Calls(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: (){
          var route = new MaterialPageRoute(
              builder: (BuildContext context) => new Contacts()
          );
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  void choiceAction (String choice){
    if(choice == MenuInicio.acerca){
      return _showDialog();
    }
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text("Mi Flutter Chat"),
          content: new Text("Creditos: José Luis Espíritu"),
          actions: <Widget>[
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

