import 'package:flutter/material.dart';

main() => runApp(AppReproductor());

class AppReproductor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black54,
            leading: Icon(Icons.menu, size: 40.0),
            title: Text("Albumes"),
            actions: <Widget>[
              Icon(Icons.search, size: 30.0),
              Icon(Icons.select_all, size: 30.0),
              Icon(Icons.more_vert, size: 30.0)
            ],
          ),
          body: ListView(
            children: <Widget>[
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/1.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Fear Inoculum", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("1", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Tool (2019)"),
                        Text("11 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/2.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("We Are Not Your Kind", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("2", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Slipknot (2019)"),
                        Text("14 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/3.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Apologies Are For The Weak", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("3", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Miss May I (2006)"),
                        Text("11 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/4.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Elite", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("4", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Within The Ruins (2012)"),
                        Text("12 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/5.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Periphery IV: Hail Stan", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("5", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Periphery (2019)"),
                        Text("11 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/6.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Transit Blues", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("6", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("The Devil Wears Prada ("),
                        Text("13 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/7.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Southern Hostility", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("7", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Upon A Burning Body ("),
                        Text("11 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/8.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Different Animals", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("8", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Volumes (2017)"),
                        Text("12 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/9.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Via", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("9", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Volumes (2006)"),
                        Text("11 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/10.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Agresivo", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("10", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Arcadia Libre (2013)"),
                        Text("9 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/11.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Rock Is Dead", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("11", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Lack Of Remorse (2019)"),
                        Text("12 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  )),
              Card(
                  margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1.5),
                  color: Colors.black12,
                  child: ListTile(
                    leading: Image.asset("assets/12.jpg",width: 50),
                    title:Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Hate, Greed & Death", style: TextStyle(fontSize: 15.0),),
                        Container(
                          padding: EdgeInsets.all(4.0),
                          color: Colors.black45,
                          child: Text("12", style: TextStyle(fontSize: 10.0),),
                        )
                      ],
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("Here Comes The Kraken ("),
                        Text("9 Canciones", style: TextStyle(fontSize: 10.0),)
                      ],
                    ),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ))
            ],
          ),
          bottomNavigationBar: Card(
            margin: EdgeInsets.fromLTRB(0, 3.5, 0, 0),
            child: ListTile(
              //contentPadding: EdgeInsets.all(0),
              leading:Image.asset("assets/Per2.jpg"),
              title: Text("The Heretic Anthem"),
              subtitle: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Periphery"),
                  Text("16/16")
                ],
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Icon(Icons.skip_previous, size: 30.0),
                  Icon(Icons.play_circle_outline, size: 40.0),
                  Icon(Icons.skip_next, size: 30.0)
                ],
              ),
            ),
          ) 
        )
        );
  }
}
