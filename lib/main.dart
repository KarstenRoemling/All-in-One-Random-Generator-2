import 'package:flutter/material.dart';
import './drawer.dart';
import './content.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      title: 'All-in-One Zufallsgenerator'
    )
  );
}

class Home extends StatefulWidget{
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("All-in-One Zufallsgenerator"),
        backgroundColor: Colors.blue,
      ),
      body: new Content(),
      drawer: Drawer(
        child: new DrawerItems(),
      )
    );
  }
}