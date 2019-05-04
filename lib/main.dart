import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "IoT Fire Alarm Dashboard",
      debugShowCheckedModeBanner: false,
      home: Home(),
      );
    }
  }

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return WebviewScaffold(
      appBar: new AppBar(
        title: Text("IoT Fire Alarm Dashboard"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.info),
            onPressed: (
            ) async {},
          ),
        ],
      ),
       url: "https://bit.ly/2LmSWP1",
       withZoom: false,
       initialChild: Center(
         child: CircularProgressIndicator(),
       ),
    );
  }
}

