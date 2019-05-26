import 'package:flutter/material.dart';
import './ownMaterial.dart';

class SimpleRandom extends StatefulWidget{
    @override
    SimpleRandomState createState() => new SimpleRandomState();
}

class SimpleRandomState extends State<SimpleRandom>{
    @override
    Widget build(BuildContext context){
        return Container(
            child: Column(
                children: <Widget>[
                    new Bar(title: "Einfacher Zufall"),
                    SizedBox(
                        width: double.infinity,
                        height: 2.0,
                        child: Container(
                            color: Colors.blueAccent,
                        )
                    ),
                    Text("Zufallszahl"),
                    RaisedButton(
                        child: Text("Generieren"),
                        color: Colors.blue,
                        onPressed: () {},
                    )
                ]
            )
        );
    }
}