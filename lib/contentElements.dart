import 'package:flutter/material.dart';
import './ownMaterial.dart';
import './MComponent.dart';
import './data.dart';
import 'dart:math';

class SimpleRandom extends StatefulWidget{
    @override
    SimpleRandomState createState() => new SimpleRandomState();
}

class SimpleRandomState extends State<SimpleRandom>{

    final controllerX = new TextEditingController();
    final controllerY = new TextEditingController();

    String randomNumber = Str.OF_RN[Settings.lang];

    void randomize(){
      var random = new Random();
      double x = double.parse(controllerX.text);
      double y = double.parse(controllerY.text);
      int xI = x.round();
      int yI = y.round();
      var result = xI+random.nextInt(yI-xI+1);
      setState((){
        randomNumber = "$result";
      });
    }

    @override
    void dispose(){
      controllerX.dispose();
      controllerY.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context){
        return Container(
            child: Column(
                children: <Widget>[
                    Bar(title: Str.T_SR[Settings.lang]),
                    SizedBox(
                        width: double.infinity,
                        height: 2.0,
                        child: Container(
                            color: Settings.clr,
                        )
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            child: TextField(
                              decoration: InputDecoration(hintText: Str.OF_MIN[Settings.lang], hintStyle: TextStyle(fontFamily: Settings.font)),
                              keyboardType: TextInputType.number,
                              controller: controllerX,
                              style: TextStyle(fontFamily: Settings.font),
                            ),
                            padding: EdgeInsets.all(8.0)
                          )
                        ),
                        Expanded(
                          child: Padding(
                            child: TextField(
                              decoration: InputDecoration(hintText: Str.OF_MAX[Settings.lang], hintStyle: TextStyle(fontFamily: Settings.font)),
                              keyboardType: TextInputType.number,
                              controller: controllerY,
                              style: TextStyle(fontFamily: Settings.font)
                            ),
                            padding: EdgeInsets.all(8.0)
                          )
                        )
                      ],
                    ),
                    MText(text: randomNumber),
                    RaisedButton(
                        color: Settings.clr,
                        onPressed: randomize,
                          /*Settings.lang = 1;
                          AppBuilder.of(context).rebuild();
                          setState((){});*/
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                        padding: const EdgeInsets.all(15.0),
                          child: MText(
                            text: Str.OF_GEN[Settings.lang],
                            style: TextStyle(fontSize: 20, color: Colors.white)
                          ),
                    )
                ]
            )
        );
    }
}