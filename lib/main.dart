import 'package:flutter/material.dart';
import './drawer.dart';
import './content.dart';
import './MComponent.dart';
import './data.dart';
import './appBuilder.dart';

void main(){
  runApp(TheApp());
}

class TheApp extends StatelessWidget{
  Widget build(BuildContext context){
    return AppBuilder(builder: (context) {
      return MaterialApp(
        home: Home(),
        title: Str.APP_NAME[Settings.lang],
        color: Settings.clr
      );
    });
  }
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
        title: MText(text: Str.APP_NAME[Settings.lang]),
        backgroundColor: Settings.clr,
      ),
      body: Content(),
      drawer: Drawer(
        child: DrawerItems(),
      )
    );
  }
}