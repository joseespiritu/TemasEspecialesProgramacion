import 'package:flutter/material.dart';
import 'package:chat/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "FlutterChat",
        theme: new ThemeData(
          primaryColor: new Color(0xff075E54),
          accentColor: new Color(0xff25D366),
        ),
        home: new WhatsAppHome()
    );
  }
}

